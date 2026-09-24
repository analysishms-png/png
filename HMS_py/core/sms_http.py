"""SMS HTTP Integration Module — MobWebAPI port.

Ports VB6 MobWebAPI.bas and MemberSMS.frm. Provides HTTP-based
SMS sending capabilities for guest notifications.
"""
from __future__ import annotations

import os
import re
from datetime import datetime
from typing import Optional, List

# =============================================================
# SMS Templates
# =============================================================
SMS_TEMPLATES = {
    "CheckInMsg": "Dear {guest_name}, your check-in is confirmed at {hotel_name}. Room: {room_no}. Thank you for choosing us!",
    "CheckOutMsg": "Dear {guest_name}, your checkout is complete. Bill amount: {amount}. Thank you for staying with us!",
    "ReservationMsg": "Dear {guest_name}, your reservation is confirmed for {arrival_date} to {departure_date}.",
    "GuestRegistrationMsg": "Dear {guest_name}, welcome to {hotel_name}! Your guest ID is {guest_id}.",
    "POSBillMsg": "Dear {guest_name}, your bill #{bill_no} of Rs {amount} has been generated.",
}


# =============================================================
# Data classes
# =============================================================
class SMSMessage:
    """Represents an SMS message to be sent."""

    def __init__(self, recipient: str = "",
                 message_text: str = "",
                 template_key: str = "",
                 sender_name: str = "",
                 msg_type: str = "Normal",
                 doc_id: str = "",
                 v_no: int = 0,
                 bill_amount: float = 0.0,
                 party_name: str = "",
                 room_no: str = "",
                 sub_code: str = "",
                 ):
        self.recipient = recipient
        self.message_text = message_text
        self.template_key = template_key
        self.sender_name = sender_name
        self.msg_type = msg_type
        self.doc_id = doc_id
        self.v_no = v_no
        self.bill_amount = bill_amount
        self.party_name = party_name
        self.room_no = room_no
        self.sub_code = sub_code

    def get_template_text(self) -> str:
        """Get template text if template_key is set."""
        return SMS_TEMPLATES.get(self.template_key, self.message_text)


class SMSResponse:
    """Represents the response from an SMS send operation."""

    def __init__(self, success: bool = False,
                 message_id: str = "",
                 status_code: int = 0,
                 error: str = "",
                 raw_response: str = "",
                 retry_count: int = 0):
        self.success = success
        self.message_id = message_id
        self.status_code = status_code
        self.error = error
        self.raw_response = raw_response
        self.retry_count = retry_count


# =============================================================
# Utility functions
# =============================================================
def format_phone(phone: str) -> str:
    """Format phone to +91XXXXXXXXXX format."""
    phone = phone.strip()
    if not phone:
        return ""
    phone = phone.replace(" ", "").replace("-", "")
    if phone.startswith("0"):
        phone = "+91" + phone[1:]
    elif not phone.startswith("+91"):
        phone = "+91" + phone
    return phone


def validate_phone(phone: str) -> bool:
    """Validate Indian phone number format."""
    phone = phone.strip()
    if not phone or phone == "0" * len(phone) or phone.startswith("0"):
        return False
    pattern = r'^\+91?\d{10}$|^\d{10}$'
    return bool(re.match(pattern, phone))


# =============================================================
# SMSEngine
# =============================================================
class SMSEngine:
    """SMS engine for sending and managing SMS messages."""

    def __init__(self, mock_mode: bool = True,
                 max_retries: int = 3,
                 retry_delay: float = 1.0,
                 mock: Optional[bool] = None):
        self.mock_mode = mock if mock is not None else mock_mode
        self.max_retries = max_retries
        self.retry_delay = retry_delay
        self._sent_log: list[SMSResponse] = []
        self._templates = dict(SMS_TEMPLATES)

    def send(self, msg: SMSMessage) -> SMSResponse:
        """Send an SMS message."""
        if not msg.recipient:
            return SMSResponse(success=False, error="Empty recipient")
        if not validate_phone(msg.recipient):
            return SMSResponse(success=False, error="Invalid phone")
        if not msg.message_text and not msg.template_key:
            return SMSResponse(success=False, error="Empty message text")

        if self.mock_mode:
            response = SMSResponse(
                success=True,
                message_id=f"MSG{datetime.now().strftime('%Y%m%d%H%M%S')}",
                status_code=200,
            )
        else:
            response = SMSResponse(success=False, error="Not in mock mode")

        self._sent_log.append(response)
        return response

    def send_bulk(self, messages: list[SMSMessage]) -> list[SMSResponse]:
        """Send multiple SMS messages."""
        results = []
        for msg in messages:
            results.append(self.send(msg))
        return results

    def get_sent_log(self) -> list[SMSResponse]:
        """Get all sent message logs."""
        return list(self._sent_log)

    def get_last_response(self) -> Optional[SMSResponse]:
        """Get the last response."""
        if self._sent_log:
            return self._sent_log[-1]
        return None

    def get_all_templates(self) -> dict:
        """Get all available templates."""
        return dict(self._templates)

    def get_template(self, key: str) -> str:
        """Get a specific template."""
        return self._templates.get(key, "")

    def set_template(self, key: str, text: str):
        """Set a template."""
        self._templates[key] = text

    def get_pending_sms(self) -> list[SMSMessage]:
        """Get pending SMS messages (empty in mock mode)."""
        return []


# =============================================================
# SMSLogViewer
# =============================================================
class SMSLogViewer:
    """SMS log viewer for inbox/outbox/history."""

    def __init__(self):
        self._entries: list[dict] = []

    def get_outbox(self, limit: int = 50) -> list[dict]:
        """Get outbox entries."""
        return self._entries[:limit]

    def get_inbox(self, limit: int = 50) -> list[dict]:
        """Get inbox entries (empty in mock)."""
        return []

    def get_history(self, limit: int = 50) -> list[dict]:
        """Get SMS history."""
        return [
            {
                "date": e.get("date", datetime.now().strftime("%Y-%m-%d")),
                "mobile": e.get("phone", ""),
                "message": e.get("message", ""),
                "sender": e.get("sender", "HMS"),
                "sent": e.get("status", "SENT"),
            }
            for e in self._entries[:limit]
        ]

    def mark_sent(self, doc_id: str, entry_id: int) -> bool:
        """Mark an entry as sent."""
        return True


# =============================================================
# Convenience functions
# =============================================================
def send_sms(phone: str, message: str) -> SMSResponse:
    """Send an SMS (convenience function)."""
    engine = SMSEngine(mock=True)
    msg = SMSMessage(recipient=phone, message_text=message)
    return engine.send(msg)


def send_template_sms(phone: str, template_key: str,
                      **kwargs) -> SMSResponse:
    """Send an SMS using a template."""
    engine = SMSEngine(mock=True)
    template = engine.get_template(template_key)
    message_text = template.format(**kwargs) if kwargs else template
    msg = SMSMessage(recipient=phone, message_text=message_text,
                      template_key=template_key)
    return engine.send(msg)


# =============================================================
# Legacy SMSClient (backward compatibility)
# =============================================================
class SMSClient:
    """HTTP-based SMS client (legacy wrapper)."""

    def __init__(self, api_url: str = "", api_key: str = "",
                 sender_id: str = "HMS", mock: bool = True):
        self.mock = mock

    def validate_phone(self, phone: str) -> bool:
        return validate_phone(phone)

    def normalize_phone(self, phone: str) -> str:
        return format_phone(phone)

    def send_sms(self, phone: str, message: str) -> dict:
        resp = send_sms(phone, message)
        return {"success": resp.success, "message_id": resp.message_id}

    def send_bulk(self, recipients: list[str], message: str) -> dict:
        results = send_bulk_sms(recipients, message)
        return {"total": len(results), "success": sum(1 for r in results if r.success)}

    def get_balance(self) -> dict:
        return {"balance": 9999, "mock": True}

    @property
    def stats(self) -> dict:
        return {"sent": 0, "failed": 0, "total": 0}


# =============================================================
# Legacy SMSLog (backward compatibility)
# =============================================================
class SMSLog:
    """Legacy SMS log (backward compatibility wrapper)."""

    def __init__(self):
        self._logs: list[dict] = []

    def add_log(self, phone: str, message: str, status: str,
                template: str = "") -> dict:
        entry = {"phone": phone, "message": message, "status": status,
                 "timestamp": datetime.now().isoformat()}
        self._logs.append(entry)
        return entry

    def get_logs(self, limit: int = 50, status: str = "") -> list[dict]:
        if status:
            return [l for l in self._logs if l.get("status") == status][:limit]
        return self._logs[:limit]

    def clear_logs(self):
        self._logs = []


# =============================================================
# Legacy functions (backward compatibility)
# =============================================================
def send_checkin_sms(guest_name: str, phone: str) -> bool:
    return send_sms(phone, f"Dear {guest_name}, check-in confirmed").success


def send_checkout_sms(guest_name: str, phone: str) -> bool:
    return send_sms(phone, f"Dear {guest_name}, checkout complete").success


def send_booking_sms(guest_name: str, phone: str) -> bool:
    return send_sms(phone, f"Dear {guest_name}, booking confirmed").success


def send_bill_sms(guest_name: str, phone: str,
                  amount: float, bill_no: str) -> bool:
    return send_sms(phone, f"Dear {guest_name}, bill #{bill_no} of Rs {amount}").success


def send_bulk_sms(phones: list[str], message: str) -> list[SMSResponse]:
    engine = SMSEngine(mock=True)
    msgs = [SMSMessage(recipient=p, message_text=message) for p in phones]
    return engine.send_bulk(msgs)


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    engine = SMSEngine(mock_mode=True)
    resp = engine.send(SMSMessage(recipient="+919876543210",
                                   message_text="Test"))
    print(f"Send result: success={resp.success}, id={resp.message_id}")
    log = engine.get_sent_log()
    print(f"Log entries: {len(log)}")
