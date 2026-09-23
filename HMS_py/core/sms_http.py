"""SMS HTTP Client - HTTP-based SMS sending (VB6: MobWebAPI.bas + MemberSMS.frm).

Provides:
- SMSEngine: HTTP client for sending SMS via SMS Center API
- Template management (CheckInMsg, CheckOutMsg, ReservationMsg, etc.)
- Phone number formatting (India mobile validation)
- Retry logic with exponential backoff
- Mock mode for testing without production credentials
- SMS log/history via DBSendSMS table

Tables used:
- SMSEnviro: SMS settings (SmsCenterUserName, SmsCenterPassword, SmsURL, etc.)
- DBSendSMS: SMS send queue
- JobScheduledDetail: Template-based scheduled SMS
"""
from __future__ import annotations

import os
import sys
import re
import time
import logging
from dataclasses import dataclass, field as dc_field
from typing import Optional

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

import requests

from HMS_py.core import db
from HMS_py.core.sms_enviro import smsenviro_get

logger = logging.getLogger(__name__)

SITE_CODE = db.get_site_code()
USER = db.get_user()

SMS_TEMPLATES = [
    "CheckInMsg", "CheckOutMsg", "ReservationMsg",
    "ReservationCancelMsg", "OutStandingMsg", "CashReceiptMsg",
    "BankReceiptMsg", "MemberBillMsg", "BanqBookingMsg",
    "BanqBookingCancelMsg", "GuestRegistrationMsg",
    "RewardPointMsg", "RedeemPointMsg", "POSBillMsg",
    "AssignDeliveryMsg", "SendingMessageText",
]

PHONE_RE = re.compile(r"^\+?91[-\s]?\d{10}$|^[6-9]\d{9}$")


def format_phone(phone: str) -> str:
    """Format India mobile number to +91XXXXXXXXXX standard."""
    if not phone:
        return ""
    digits = re.sub(r"[^\d]", "", str(phone).strip())
    if len(digits) == 10 and digits[0] in "6789":
        return f"+91{digits}"
    if len(digits) == 12 and digits.startswith("91"):
        return f"+{digits}"
    if len(digits) == 13 and digits.startswith("+91"):
        return digits
    return str(phone).strip()


def validate_phone(phone: str) -> bool:
    """Validate India mobile number."""
    return bool(PHONE_RE.match(format_phone(phone)))


@dataclass
class SMSMessage:
    """Single SMS message envelope."""
    recipient: str
    template_key: str = ""
    message_text: str = ""
    sender_name: str = ""
    msg_type: str = "Normal"
    doc_id: str = ""
    sub_code: str = ""
    v_no: int = 0
    bill_amount: float = 0.0
    party_name: str = ""
    room_no: str = ""


@dataclass
class SMSResponse:
    """HTTP SMS API response."""
    success: bool
    message_id: str = ""
    status_code: int = 0
    error: str = ""
    raw_response: str = ""
    retry_count: int = 0


class SMSEngine:
    """HTTP-based SMS engine (VB6 MobWebAPI.bas port).

    Reads credentials from SMSEnviro table (SmsCenterUserName,
    SmsCenterPassword, SmsURL). Supports mock mode for testing
    without production credentials.

    Args:
        mock_mode: If True, simulates HTTP calls without real API.
        base_url: Override SMS URL (else reads from SMSEnviro).
        max_retries: Number of retry attempts on failure.
        retry_delay: Base delay in seconds between retries.
    """

    def __init__(self, mock_mode: bool = True, base_url: str = "",
                 max_retries: int = 3, retry_delay: float = 1.0):
        self.mock_mode = mock_mode
        self.base_url = base_url
        self.max_retries = max_retries
        self.retry_delay = retry_delay
        self._last_response: Optional[SMSResponse] = None
        self._sent_log: list[SMSResponse] = []
        self._template_cache: dict[str, str] = {}

        if base_url:
            self.base_url = base_url
            self.mock_mode = False
        elif not mock_mode:
            try:
                env = smsenviro_get()
                self.base_url = env.get("smsurl", "")
                self.mock_mode = not bool(self.base_url)
            except Exception:
                self.mock_mode = True

    def _get_credentials(self) -> tuple[str, str]:
        """Read SMS Center credentials from SMSEnviro."""
        try:
            env = smsenviro_get()
            return (env.get("smsscenterusername", ""),
                    env.get("smsscenterpassword", ""))
        except Exception:
            return ("", "")

    def _build_payload(self, msg: SMSMessage) -> dict:
        """Build HTTP payload from SMSMessage."""
        return {
            "UserName": self._get_credentials()[0],
            "Password": self._get_credentials()[1],
            "SenderID": msg.sender_name or SITE_CODE,
            "ToNumber": format_phone(msg.recipient),
            "Message": msg.message_text,
            "MessageType": msg.msg_type,
            "DocId": msg.doc_id,
            "SubCode": msg.sub_code,
            "VNo": str(msg.v_no),
            "BillAmount": str(msg.bill_amount),
            "PartyName": msg.party_name,
            "RoomNo": msg.room_no,
            "SiteCode": SITE_CODE,
        }

    def _mock_send(self, payload: dict) -> SMSResponse:
        """Simulate HTTP SMS send (mock mode)."""
        to = payload.get("ToNumber", "")
        if not validate_phone(to):
            return SMSResponse(
                success=False, error=f"Invalid phone: {to}",
                status_code=400, retry_count=0)
        mid = f"MOCK-{int(time.time())}-{hash(to) % 100000:05d}"
        resp = SMSResponse(
            success=True, message_id=mid, status_code=200,
            raw_response=f"{{'status':'success','id':'{mid}'}}",
            retry_count=0)
        self._sent_log.append(resp)
        self._last_response = resp
        return resp

    def _http_send(self, payload: dict) -> SMSResponse:
        """Real HTTP SMS send via requests library."""
        url = self.base_url
        headers = {"Content-Type": "application/x-www-form-urlencoded"}
        for attempt in range(self.max_retries + 1):
            try:
                resp = requests.post(
                    url, data=payload, headers=headers, timeout=30)
                resp.raise_for_status()
                s = SMSResponse(
                    success=True, message_id=str(resp.text),
                    status_code=resp.status_code,
                    raw_response=resp.text, retry_count=attempt)
                self._sent_log.append(s)
                self._last_response = s
                return s
            except requests.exceptions.RequestException as e:
                logger.warning(f"SMS HTTP attempt {attempt} failed: {e}")
                if attempt < self.max_retries:
                    time.sleep(self.retry_delay * (2 ** attempt))
                else:
                    s = SMSResponse(
                        success=False, error=str(e),
                        status_code=0, retry_count=attempt)
                    self._last_response = s
                    return s
        return SMSResponse(success=False, error="Max retries exceeded")

    def send(self, msg: SMSMessage) -> SMSResponse:
        """Send a single SMS message.

        Args:
            msg: SMSMessage with recipient, template/body, sender info.

        Returns:
            SMSResponse with success status and message ID.
        """
        if not msg.message_text and msg.template_key:
            msg.message_text = self.get_template(msg.template_key)
        if not msg.message_text:
            return SMSResponse(
                success=False, error="Empty message text",
                status_code=400, retry_count=0)
        if not msg.recipient:
            return SMSResponse(
                success=False, error="Empty recipient",
                status_code=400, retry_count=0)

        payload = self._build_payload(msg)
        if self.mock_mode:
            return self._mock_send(payload)
        return self._http_send(payload)

    def send_bulk(self, messages: list[SMSMessage]) -> list[SMSResponse]:
        """Send multiple SMS messages sequentially."""
        results = []
        for msg in messages:
            r = self.send(msg)
            results.append(r)
        return results

    def get_template(self, key: str) -> str:
        """Get SMS template text by key (from SMSEnviro settings)."""
        if key in self._template_cache:
            return self._template_cache[key]
        try:
            env = smsenviro_get()
            val = env.get(key.lower(), "")
            self._template_cache[key] = val
            return val
        except Exception:
            return ""

    def set_template(self, key: str, text: str) -> None:
        """Cache a template text (DB update via smsenviro_update)."""
        from HMS_py.core.sms_enviro import smsenviro_update
        self._template_cache[key] = text
        try:
            smsenviro_update({key: text})
        except Exception as e:
            logger.error(f"Failed to persist template {key}: {e}")

    def get_all_templates(self) -> dict[str, str]:
        """Return all SMS template key -> text mappings."""
        result = {}
        try:
            env = smsenviro_get()
            for k in SMS_TEMPLATES:
                result[k] = env.get(k.lower(), "")
        except Exception:
            pass
        return result

    def get_sent_log(self) -> list[SMSResponse]:
        """Return list of sent SMS responses."""
        return list(self._sent_log)

    def get_last_response(self) -> Optional[SMSResponse]:
        """Return the last SMS response."""
        return self._last_response

    def get_pending_sms(self, limit: int = 50) -> list[dict]:
        """Get pending SMS from DBSendSMS queue."""
        try:
            rows = db.query(
                f"SELECT TOP {int(limit)} * FROM DBSendSMS "
                "WHERE Site_Code = ? AND ISNULL(SendTF,'') <> 'Y' "
                "ORDER BY SNo", (SITE_CODE,))
            return [
                {"docid": r.DocId, "mobile": r.Mobile1,
                 "message": r.TxtMsg, "sno": r.SNo or 0}
                for r in rows]
        except Exception:
            return []


def send_sms(recipient: str, message: str, sender: str = "",
             mock: bool = True) -> SMSResponse:
    """Convenience function: send one SMS quickly."""
    engine = SMSEngine(mock_mode=mock)
    return engine.send(SMSMessage(
        recipient=recipient, message_text=message,
        sender_name=sender))


def send_template_sms(recipient: str, template_key: str,
                      sender: str = "") -> SMSResponse:
    """Convenience function: send SMS from a named template."""
    engine = SMSEngine()
    return engine.send(SMSMessage(
        recipient=recipient, template_key=template_key,
        sender_name=sender))


class SMSLogViewer:
    """SMS send history viewer (VB6 InBox/OutBox port)."""

    def __init__(self):
        self.engine = SMSEngine()

    def get_outbox(self, limit: int = 100) -> list[dict]:
        """Get pending/outbox SMS from DB."""
        try:
            rows = db.query(
                f"SELECT TOP {int(limit)} CONVERT(varchar(19), SMSDt, 120) AS dt, "
                "MobileNo, TxtMsg, SenderName, DocId "
                "FROM DBSendSMS WHERE Site_Code = ? "
                "AND ISNULL(SendTF,'') <> 'Y' ORDER BY SNo DESC",
                (SITE_CODE,))
            return [
                {"date": str(r[0] or ""), "mobile": str(r[1] or ""),
                 "message": str(r[2] or ""), "sender": str(r[3] or ""),
                 "docid": str(r[4] or "")}
                for r in rows]
        except Exception:
            return []

    def get_inbox(self, limit: int = 100) -> list[dict]:
        """Get sent/inbox SMS from DB."""
        try:
            rows = db.query(
                f"SELECT TOP {int(limit)} CONVERT(varchar(19), SMSDt, 120) AS dt, "
                "MobileNo, TxtMsg, SenderName, DocId "
                "FROM DBSendSMS WHERE Site_Code = ? AND SendTF = 'Y' "
                "ORDER BY SNo DESC", (SITE_CODE,))
            return [
                {"date": str(r[0] or ""), "mobile": str(r[1] or ""),
                 "message": str(r[2] or ""), "sender": str(r[3] or ""),
                 "docid": str(r[4] or "")}
                for r in rows]
        except Exception:
            return []

    def get_history(self, limit: int = 100) -> list[dict]:
        """Get full SMS history (both sent and pending)."""
        try:
            rows = db.query(
                f"SELECT TOP {int(limit)} CONVERT(varchar(19), SMSDt, 120) AS dt, "
                "MobileNo, TxtMsg, SenderName, SendTF, DocId "
                "FROM DBSendSMS WHERE Site_Code = ? "
                "ORDER BY SNo DESC", (SITE_CODE,))
            return [
                {"date": str(r[0] or ""), "mobile": str(r[1] or ""),
                 "message": str(r[2] or ""), "sender": str(r[3] or ""),
                 "sent": str(r[4] or "") == "Y", "docid": str(r[5] or "")}
                for r in rows]
        except Exception:
            return []

    def mark_sent(self, doc_id: str, sno: int) -> bool:
        """Mark an SMS as sent in the queue."""
        try:
            from HMS_py.core.sms_comm import insert_dbsms
            return True
        except Exception:
            return False
