#!/usr/bin/env python3
"""
SerialKey CLI - HMS License Management Tool
Reimplementation of serialkey/company/frmCompany VB6 logic in Python

This tool replicates the exact algorithms from the HMS VB6 application:
  - Proc_4_28_EE7B5C (encryption/decryption)
  - CODIFY (encoding function)
  - Checksum calculation
  - CompInfo file generation
  - HMSKey file generation & validation
  - Analysis.ini parsing
  - License expiry validation
"""

import os
import sys
import datetime
import configparser
import random
import glob
import ctypes

# ============================================================
# CONSTANTS
# ============================================================

SERIALKEY_SHIFT = 0x1B  # 27

# Year prefixes and their corresponding license dates
YEAR_PREFIXES = {
    "Hudhud": datetime.date(2025, 1, 15),
    "Pirecy": datetime.date(2026, 1, 15),
    "Pinaca": datetime.date(2027, 1, 15),
    "Platoo": datetime.date(2028, 1, 15),
    "Zombia": datetime.date(2029, 1, 15),
    "Albert": datetime.date(2030, 1, 15),
    "Ostric": datetime.date(2031, 1, 15),
    "Legran": datetime.date(2032, 1, 15),
    "Malmal": datetime.date(2033, 1, 15),
}

# ============================================================
# CORE ALGORITHMS (Exact VB6 Replicas)
# ============================================================

class HMSLib:
    """Replicates the VB6 .BAS module functions."""

    @staticmethod
    def decrypt(text):
        """
        Proc_4_28_EE7B5C - Decryption algorithm.
        
        VB6 logic:
          shift = Asc(Left(text, 1)) - &H1B
          For i = 1 To Len(text) - 1:
            result += Chr(Asc(Mid(text, i+1, 1)) - &H1B - shift)
        """
        if not text:
            return ""
        try:
            shift = ord(text[0]) - SERIALKEY_SHIFT
            return "".join(chr(ord(c) - SERIALKEY_SHIFT - shift) for c in text[1:])
        except Exception:
            return ""

    @staticmethod
    def encrypt(text, shift_char=None):
        """
        CODIFY - Encryption algorithm (reverse of Proc_4_28).
        
        Generates a random shift character, then encodes:
          first_char = chr(shift + 27)
          For each char c: chr(ord(c) + 27 + shift)
        
        If shift_char is provided, uses it; otherwise generates randomly.
        """
        if not text:
            return ""
        if shift_char is None:
            # Random shift between 1 and 94 (printable ASCII range)
            shift = random.randint(1, 94)
            shift_char = chr(shift + SERIALKEY_SHIFT)
        shift = ord(shift_char[0]) - SERIALKEY_SHIFT
        return shift_char[0] + "".join(chr(ord(c) + SERIALKEY_SHIFT + shift) for c in text)

    @staticmethod
    def checksum(text):
        """
        EXACT VB6 checksum calculation (loc_11164BA).
        
        VB6 logic:
          val = Asc(Mid(arg_C, 1, 1)) * 10
          While (val * 10) < 9999:
            val *= 10
          total = val + sum(Asc(c) for c in arg_C)
          Return str(total)
        """
        if not text:
            return "0"
        text = text.strip().upper()
        val = ord(text[0]) * 10
        while (val * 10) < 9999:
            val *= 10
        total = val + sum(ord(c) for c in text)
        return str(total)

    @staticmethod
    def xnull(value):
        """
        XNull - Returns empty string if value is None/empty, else trimmed value.
        VB6: IIf(IsNull(temp), "", Trim(temp))
        """
        if value is None:
            return ""
        return str(value).strip()

    @staticmethod
    def get_license_date(prefix):
        """Get the license date for a given prefix."""
        prefix = prefix.strip()[:6].title()
        for key in YEAR_PREFIXES:
            if key.lower() == prefix.lower():
                return YEAR_PREFIXES[key]
        return None


# ============================================================
# SERIAL KEY GENERATION & VALIDATION
# ============================================================

class SerialKeyManager:
    """Manages serial key generation, validation, and file I/O."""

    @staticmethod
    def generate_key(company_name, city, code, prefix="Pinaca"):
        """
        Generate a serial key for a company.
        
        The key format is:
          Raw:     [6-char prefix][10-char checksum]
          Encrypted: CODIFY(raw)
        
        The checksum is computed from: CompanyName#City#Code
        """
        combined = f"{company_name}#{city}#{code}"
        chk = HMSLib.checksum(combined)
        # Pad checksum to 10 chars
        chk_padded = chk.rjust(10)[:10]
        raw_key = f"{prefix}{chk_padded}"
        encrypted = HMSLib.encrypt(raw_key)
        return encrypted, raw_key, combined

    @staticmethod
    def validate_key(encrypted_key, company_info):
        """
        Validate a serial key.
        
        Args:
            encrypted_key: The encrypted serial key string
            company_info: Company identifier for checksum validation
                          (either combined string "Name#City#Code" or just name)
        
        Returns:
            (is_valid, message, details_dict)
        """
        try:
            # Decrypt
            decrypted = HMSLib.decrypt(encrypted_key)
            if not decrypted or len(decrypted) < 6:
                return False, "Invalid key format (too short)", {}
            
            # Extract prefix (6 chars) and checksum (remaining)
            prefix = decrypted[:6]
            key_checksum = decrypted[6:].strip()
            
            # Compute expected checksum
            if "#" in company_info:
                expected_chk = HMSLib.checksum(company_info)
            else:
                expected_chk = HMSLib.checksum(company_info)
            
            # Validate checksum
            if key_checksum != expected_chk:
                return False, (
                    f"Checksum mismatch! "
                    f"Key has '{key_checksum}', expected '{expected_chk}'"
                ), {"prefix": prefix, "key_chk": key_checksum, "expected_chk": expected_chk}
            
            # Validate prefix (year code)
            license_date = HMSLib.get_license_date(prefix)
            if license_date is None:
                return False, (
                    f"Unknown prefix '{prefix}'. "
                    f"Valid: {', '.join(YEAR_PREFIXES.keys())}"
                ), {"prefix": prefix, "key_chk": key_checksum, "expected_chk": expected_chk}
            
            # Check expiry
            today = datetime.date.today()
            # Grace period: 45 days after license date
            grace_date = license_date + datetime.timedelta(days=365 + 45)
            
            if today > grace_date:
                return False, (
                    f"License EXPIRED! Prefix '{prefix}' = {license_date}. "
                    f"Grace period ended {grace_date}"
                ), {
                    "prefix": prefix, "license_date": str(license_date),
                    "grace_date": str(grace_date), "expired": True
                }
            
            days_left = (grace_date - today).days
            
            # Warning if within 45 days of expiry
            if today > license_date:
                expiry_warning = f"License expires in {days_left} days (grace period)"
            else:
                expiry_warning = f"License valid until {license_date} (+ grace)"
            
            return True, f"VALID KEY. {expiry_warning}", {
                "prefix": prefix, "license_date": str(license_date),
                "grace_date": str(grace_date), "days_left": days_left,
                "key_chk": key_checksum, "expected_chk": expected_chk
            }
            
        except Exception as e:
            return False, f"Validation error: {e}", {}

    @staticmethod
    def read_key_from_file(filepath):
        """Read an encrypted serial key from a file."""
        try:
            with open(filepath, "rb") as f:
                raw = f.read().strip()
            if not raw:
                return None
            # IMPORTANT: Must use latin-1 for consistency with write_key_to_file.
            # VB6 Chr() produces byte values 0-255.  latin-1 maps each byte 0-255
            # to the SAME Unicode codepoint (U+0000-U+00FF).  cp1252 maps some
            # bytes (0x80-0x9F) to DIFFERENT codepoints (e.g. 0x80 → U+20AC €),
            # which corrupts the decryption.  Always use latin-1 for binary-safe
            # round-trips.
            return raw.decode("latin-1")
        except FileNotFoundError:
            return None
        except Exception as e:
            return None

    @staticmethod
    def write_key_to_file(filepath, encrypted_key):
        """Write an encrypted serial key to a file."""
        # VB6 uses Print #1, which writes ANSI string + CRLF.
        # latin-1 can encode ALL byte values 0-255 losslessly (each codepoint
        # U+0000-U+00FF maps to its byte value). Our encrypt function only
        # produces characters in 76-243 range, so latin-1 always works.
        # Use binary mode to prevent Python from translating \n to \r\n.
        raw_bytes = encrypted_key.encode("latin-1")
        with open(filepath, "wb") as f:
            f.write(raw_bytes + b"\r\n")
        return True


# ============================================================
# CompInfo FILE MANAGEMENT
# ============================================================

class CompInfoManager:
    """Manages CompInfo_*.Txt files (company information)."""

    @staticmethod
    def generate_compinfo(company_name, city, code):
        """
        Generate a combined CompInfo string.
        
        Matches VB6 CmdCompInfo_Click logic:
          var_18 = field1 + "#" + field2 + "#" + field3
        """
        return f"{company_name}#{city}#{code}"

    @staticmethod
    def get_compinfo_filename(combined_string):
        """Get the filename for a CompInfo entry."""
        return f"CompInfo_{combined_string}.Txt"

    @staticmethod
    def write_compinfo(base_path, company_name, city, code):
        """
        Write a CompInfo_*.Txt file.
        
        Matches VB6:
          Open path & "\\CompInfo_" & combined & ".Txt" For Output As #1
          Print #1, combined
          Close #1
        """
        combined = CompInfoManager.generate_compinfo(company_name, city, code)
        filename = CompInfoManager.get_compinfo_filename(combined)
        filepath = os.path.join(base_path, filename)
        
        with open(filepath, "wb") as f:
            f.write(combined.encode("utf-8") + b"\r\n")
        
        return filepath

    @staticmethod
    def read_compinfo(filepath):
        """Read and parse a CompInfo_*.Txt file."""
        try:
            with open(filepath, "r", encoding="utf-8") as f:
                content = f.read().strip()
            parts = content.split("#")
            return {
                "raw": content,
                "company_name": parts[0] if len(parts) > 0 else "",
                "city": parts[1] if len(parts) > 1 else "",
                "code": parts[2] if len(parts) > 2 else "",
            }
        except FileNotFoundError:
            return None
        except Exception as e:
            return None

    @staticmethod
    def find_all_compinfo(base_path):
        """Find all CompInfo_*.Txt files in the given path."""
        files = glob.glob(os.path.join(base_path, "CompInfo_*.Txt"))
        results = []
        for f in files:
            info = CompInfoManager.read_compinfo(f)
            if info:
                results.append(info)
        return results


# ============================================================
# HMSKey FILE MANAGEMENT
# ============================================================

class HMSKeyManager:
    """Manages HMSKey_*.Txt files (serial key storage)."""

    @staticmethod
    def get_key_filename(combined_string):
        """Get the filename for a HMSKey entry."""
        return f"HMSKey_{combined_string}.Txt"

    @staticmethod
    def write_key(base_path, combined_string, encrypted_key):
        """
        Write an HMSKey_*.Txt file.
        
        Matches VB6 CmdUpdate_Click logic:
          Open path & "\\HMSKey_" & combined & ".Txt" For Output As #1
          Print #1, encrypted_key
          Close #1
        """
        filename = HMSKeyManager.get_key_filename(combined_string)
        filepath = os.path.join(base_path, filename)
        return SerialKeyManager.write_key_to_file(filepath, encrypted_key), filepath

    @staticmethod
    def read_key(base_path, combined_string):
        """Read an HMSKey_*.Txt file."""
        filename = HMSKeyManager.get_key_filename(combined_string)
        filepath = os.path.join(base_path, filename)
        return SerialKeyManager.read_key_from_file(filepath)

    @staticmethod
    def find_all_keys(base_path):
        """Find all HMSKey_*.Txt files in the given path."""
        files = glob.glob(os.path.join(base_path, "HMSKey_*.Txt"))
        results = []
        for f in files:
            key_data = SerialKeyManager.read_key_from_file(f)
            if key_data:
                basename = os.path.basename(f)
                # Extract company info from filename
                # HMSKey_Name#City#Code.Txt
                info_str = basename.replace("HMSKey_", "").replace(".Txt", "")
                results.append({
                    "filepath": f,
                    "company_info": info_str,
                    "encrypted_key": key_data,
                })
        return results


# ============================================================
# Analysis.ini PARSER
# ============================================================

class AnalysisConfig:
    """Parse and manage Analysis.ini configuration.
    
    Reads from:
      - [HMS] section: DB server, paths, site config (keys 1-10)
      - [DefaultDataBSE] section: Company data for serial key generation
      - Legacy format (first 2 lines: server, database)
    """

    def __init__(self, base_path=None):
        self.base_path = base_path or os.getcwd()
        self.config = {}
        self.default_data = {}  # DefaultDataBSE section
        self.load()

    def load(self):
        """Load Analysis.ini from the base path."""
        ini_path = os.path.join(self.base_path, "Analysis.ini")
        if not os.path.exists(ini_path):
            return False
        
        try:
            parser = configparser.ConfigParser()
            parser.read(ini_path)
            
            # Read [HMS] section
            if "HMS" in parser:
                for key, value in parser["HMS"].items():
                    self.config[key] = value
            
            # Read [DefaultDataBSE] section - company data for serial keys
            if "DefaultDataBSE" in parser:
                for key, value in parser["DefaultDataBSE"].items():
                    self.default_data[key] = value
            
            return True
        except Exception:
            # Fallback: manual parsing
            try:
                current_section = None
                with open(ini_path, "r", encoding="utf-8") as f:
                    for line in f:
                        line = line.strip()
                        if not line:
                            continue
                        if line.startswith("[") and line.endswith("]"):
                            current_section = line[1:-1]
                        elif "=" in line:
                            k, v = line.split("=", 1)
                            if current_section == "HMS":
                                self.config[k.strip()] = v.strip()
                            elif current_section == "DefaultDataBSE":
                                self.default_data[k.strip()] = v.strip()
                            elif current_section is None:
                                # Legacy format: key=value without [section] header
                                self.config[k.strip()] = v.strip()
                return True
            except Exception:
                return False

    def get(self, key, default=None):
        return self.config.get(key, default)

    def get_default(self, key, default=None):
        """Get a value from [DefaultDataBSE] section."""
        return self.default_data.get(key, default)

    @property
    def db_server(self):
        """Database server (key 1)."""
        return self.get("1", "localhost")

    @property
    def reports_path(self):
        """Reports path (key 2)."""
        return self.get("2", "")

    @property
    def temp_path(self):
        """Temp path (key 3)."""
        return self.get("3", "")

    @property
    def printer(self):
        """Printer name (key 4)."""
        return self.get("4", "PRN")

    @property
    def backup_path(self):
        """Backup path (key 5)."""
        return self.get("5", "C:\\Backup")

    @property
    def database_name(self):
        """Database name (key 6)."""
        return self.get("6", "")

    @property
    def site_code(self):
        """Site code (key 7)."""
        return self.get("7", "")

    @property
    def city(self):
        """City (key 8)."""
        return self.get("8", "")

    @property
    def modules(self):
        """Module list (key 9)."""
        modules_str = self.get("9", "")
        return [m.strip() for m in modules_str.split("#") if m.strip()]

    @property
    def image_path(self):
        """Image path (key 10)."""
        return self.get("10", "")

    # --- DefaultDataBSE Properties ---
    @property
    def default_company_name(self):
        """Company name from [DefaultDataBSE]."""
        return self.get_default("company", "") or self.get_default("CompanyName", "")

    @property
    def default_city(self):
        """City from [DefaultDataBSE]."""
        return self.get_default("city", "") or self.get_default("City", "")

    @property
    def default_code(self):
        """Code from [DefaultDataBSE]."""
        return self.get_default("code", "") or self.get_default("Code", "")

    @property
    def default_combined(self):
        """Combined company info string from DefaultDataBSE."""
        return f"{self.default_company_name}#{self.default_city}#{self.default_code}"

    def has_default_data(self):
        """Check if DefaultDataBSE has company data."""
        return bool(self.default_company_name and self.default_city and self.default_code)

    def get_all_companies_from_defaults(self):
        """
        Get all company entries from [DefaultDataBSE].
        Returns list of dicts with company, city, code.
        Supports multiple formats:
          - Single entry: company=X, city=Y, code=Z
          - Multiple entries: company1=X1, city1=Y1, code1=Z1
          - Pipe or comma separated: company=Name1|Name2, city=City1|City2, code=111|222
        """
        companies = []
        
        # Check for indexed entries (company1, city1, code1)
        idx = 1
        while True:
            comp = self.get_default(f"company{idx}", "") or self.get_default(f"CompanyName{idx}", "")
            city = self.get_default(f"city{idx}", "") or self.get_default(f"City{idx}", "")
            code = self.get_default(f"code{idx}", "") or self.get_default(f"Code{idx}")
            if comp and city and code:
                companies.append({"company": comp, "city": city, "code": code})
                idx += 1
            else:
                break
        
        # If no indexed entries, check for pipe-separated values
        if not companies:
            comp_val = self.default_company_name
            city_val = self.default_city
            code_val = self.default_code
            if comp_val and city_val and code_val:
                comps = comp_val.split("|")
                cities = city_val.split("|")
                codes = code_val.split("|")
                for i in range(max(len(comps), len(cities), len(codes))):
                    c = comps[i].strip() if i < len(comps) else comps[-1].strip()
                    ct = cities[i].strip() if i < len(cities) else cities[-1].strip()
                    cd = codes[i].strip() if i < len(codes) else codes[-1].strip()
                    if c and ct and cd:
                        companies.append({"company": c, "city": ct, "code": cd})
        
        # Fallback to single entry
        if not companies and self.has_default_data():
            companies.append({
                "company": self.default_company_name,
                "city": self.default_city,
                "code": self.default_code
            })
        
        return companies


# ============================================================
# sysdm.ocx READER (Encrypted DB Credentials)
# ============================================================

class SysdmReader:
    """Read and decrypt sysdm.ocx file (encrypted DB credentials)."""

    def __init__(self, base_path=None):
        self.base_path = base_path or os.getcwd()
        self.username = ""
        self.password = ""

    def read(self):
        """
        Read sysdm.ocx and decrypt the credentials.
        
        VB6 Form_Load logic:
          Open path & "\\sysdm.ocx" For Input As #1
          Line Input #1, encrypted_username    ' Me + 0x38
          Line Input #1, encrypted_password   ' Me + 0x34
          Close #1
          username = Proc_4_28_EE7B5C(encrypted_username)
          password = Proc_4_28_EE7B5C(encrypted_password)
        """
        filepath = os.path.join(self.base_path, "sysdm.ocx")
        if not os.path.exists(filepath):
            return False
        
        try:
            with open(filepath, "rb") as f:
                raw_data = f.read()
            
            # Decode as latin-1 (VB6 uses ANSI)
            text = raw_data.decode("latin-1")
            lines = text.replace("\r\n", "\n").split("\n")
            
            if len(lines) >= 1:
                enc_user = lines[0].strip()
                if enc_user:
                    self.username = HMSLib.decrypt(enc_user)
            
            if len(lines) >= 2:
                enc_pass = lines[1].strip()
                if enc_pass:
                    self.password = HMSLib.decrypt(enc_pass)
            
            return True
        except Exception as e:
            return False

    def get_connection_string(self, database=None, server=None):
        """
        Build a SQL Server connection string.
        
        Matches VB6 Form_Load format:
          Provider=SQLOLEDB.1;Persist Security Info=False;
          User ID={username};Initial Catalog={database};
          Data Source={server};pwd={password}
        """
        if not server:
            server = "localhost"
        if not database:
            database = ""
        
        return (
            f"Provider=SQLOLEDB.1;Persist Security Info=False;"
            f"User ID={self.username};Initial Catalog={database};"
            f"Data Source={server};pwd={self.password}"
        )


# ============================================================
# VOLUME SERIAL DETECTION (ctypes / platform-specific)
# ============================================================

class VolumeSerialDetector:
    """Detects volume serial numbers of drives, matching VB6 FSO.GetDrive behavior."""

    @staticmethod
    def get_volume_serial(drive_path="C:\\"):
        """
        Get the volume serial number for a drive using Win32 API.
        VB6 equivalent: FSO.GetDrive(path).SerialNumber
        
        Returns:
            (serial_number_int, serial_number_str, volume_name)
        """
        try:
            kernel32 = ctypes.windll.kernel32
            volume_name = ctypes.create_unicode_buffer(256)
            file_system = ctypes.create_unicode_buffer(256)
            serial_number = ctypes.c_ulong(0)
            max_component = ctypes.c_ulong(0)
            flags = ctypes.c_ulong(0)
            
            # Ensure drive path ends with \
            dpath = drive_path.rstrip("\\") + "\\"
            
            result = kernel32.GetVolumeInformationW(
                dpath,
                volume_name, 256,
                ctypes.byref(serial_number),
                ctypes.byref(max_component),
                ctypes.byref(flags),
                file_system, 256
            )
            
            if result:
                ser_int = serial_number.value  # Unsigned 32-bit
                # VB6 treats this as a signed Long, but we keep unsigned
                ser_str = str(ser_int)
                vol_name = volume_name.value
                return ser_int, ser_str, vol_name
            else:
                return None, None, None
        except Exception as e:
            return None, None, None

    @staticmethod
    def get_drive_from_path(filepath):
        """Extract the drive letter from a path."""
        if not filepath:
            return None
        # Handle paths like "C:\", "C:", "C:\\Windows"
        path = filepath.strip()
        if len(path) >= 2 and path[1] == ':':
            return path[:2] + "\\"
        return None


# ============================================================
# HMSKey.ini MANAGER (Command1_Click VB6 Replication)
# ============================================================

class HMSKeyIniManager:
    """
    Manages HMSKey\\HMSKey.ini file - the entry point for SerialKey.exe validation.
    
    VB6 Command1_Click flow:
      1. Check if App.Path & \"\HMSKey\HMSKey.ini\" exists
      2. If not → error and End
      3. Read HMSKey.ini content
      4. Extract drive identifier from content
      5. Get volume serial number from that drive
      6. Look for HMSKey_{serial}.Txt file
      7. Read and validate encrypted key
    """

    HMSKEY_INI_DIR = "HMSKey"
    HMSKEY_INI_FILE = "HMSKey.ini"

    @staticmethod
    def get_ini_path(base_path):
        """Get the full path to HMSKey.ini."""
        return os.path.join(base_path, HMSKeyIniManager.HMSKEY_INI_DIR, 
                           HMSKeyIniManager.HMSKEY_INI_FILE)

    @staticmethod
    def ini_exists(base_path):
        """Check if HMSKey.ini exists."""
        return os.path.exists(HMSKeyIniManager.get_ini_path(base_path))

    @staticmethod
    def read_ini(base_path):
        """
        Read HMSKey.ini content.
        
        VB6: OpenTextFile(path, 1, , 0) → reads entire file as text.
        Returns the first line (trimmed) or None.
        """
        ini_path = HMSKeyIniManager.get_ini_path(base_path)
        if not os.path.exists(ini_path):
            return None
        try:
            with open(ini_path, "r", encoding="utf-8") as f:
                content = f.read().strip()
            # Take first non-empty line
            for line in content.split("\n"):
                line = line.strip()
                if line:
                    return line
            return None
        except Exception:
            return None

    @staticmethod
    def create_ini(base_path, content):
        """
        Create or update HMSKey.ini with the given content.
        
        Creates the HMSKey directory if it doesn't exist.
        """
        ini_dir = os.path.join(base_path, HMSKeyIniManager.HMSKEY_INI_DIR)
        os.makedirs(ini_dir, exist_ok=True)
        ini_path = os.path.join(ini_dir, HMSKeyIniManager.HMSKEY_INI_FILE)
        with open(ini_path, "w", encoding="utf-8") as f:
            f.write(content + "\r\n")
        return ini_path

    @staticmethod
    def extract_identifier(base_path):
        """
        Extract the company/volume identifier from HMSKey.ini.
        
        The VB6 code reads the ini content, then uses it with FSO.GetDrive
        to get the volume serial. The content can be:
          - A drive path like "C:\" → gets volume serial
          - A company identifier like "KALAWATI GREENS#Akbarpur#1648"
        
        Returns:
            (identifier_type, identifier_value)
            identifier_type: "volume_serial", "company_info", or None
        """
        content = HMSKeyIniManager.read_ini(base_path)
        if content is None:
            return None, None
        
        # Check if it looks like a drive path (e.g., "C:", "C:\", "D:\\")
        drive = VolumeSerialDetector.get_drive_from_path(content)
        if drive:
            ser_int, ser_str, vol_name = VolumeSerialDetector.get_volume_serial(drive)
            if ser_int is not None:
                return "volume_serial", ser_str
            return "raw_content", content
        
        # Check if it looks like a company identifier (contains # or no colon)
        if "#" in content:
            return "company_info", content
        
        # Default: treat as raw content
        return "raw_content", content

    @staticmethod
    def find_matching_hmskey(base_path, identifier):
        """
        Find a matching HMSKey_{identifier}.Txt file.
        
        First tries exact match, then Searches for any HMSKey file
        that contains the identifier.
        """
        # Exact match
        exact = os.path.join(base_path, f"HMSKey_{identifier}.Txt")
        if os.path.exists(exact):
            return exact
        
        # Also check without .Txt (some files might have different casing)
        for ext in [".Txt", ".txt", ".TXT"]:
            exact = os.path.join(base_path, f"HMSKey_{identifier}{ext}")
            if os.path.exists(exact):
                return exact
        
        # Partial match - search for any HMSKey file containing the identifier
        pattern = os.path.join(base_path, "HMSKey_*.Txt")
        for f in glob.glob(pattern):
            basename = os.path.basename(f)
            if identifier in basename:
                return f
        
        return None

    @staticmethod
    def run_validation_flow(base_path):
        """
        Run the complete validation flow matching VB6 Command1_Click.
        
        Returns:
            (success, message, details)
        """
        # Step 1: Check HMSKey.ini exists
        ini_path = HMSKeyIniManager.get_ini_path(base_path)
        if not os.path.exists(ini_path):
            return False, (
                f"FAIL: HMSKey.ini not found at {ini_path}"
            ), None
        
        # Step 2: Read the content
        content = HMSKeyIniManager.read_ini(base_path)
        
        # Step 3: Extract identifier
        id_type, identifier = HMSKeyIniManager.extract_identifier(base_path)
        if identifier is None:
            return False, "FAIL: Could not extract identifier from HMSKey.ini", None
        
        # Step 4: Find matching HMSKey file
        key_file = HMSKeyIniManager.find_matching_hmskey(base_path, identifier)
        if key_file is None:
            return False, (
                f"FAIL: No matching HMSKey file found for identifier '{identifier}'"
            ), {"ini_content": content, "identifier_type": id_type, "identifier": identifier}
        
        # Step 5: Read encrypted key
        encrypted = SerialKeyManager.read_key_from_file(key_file)
        if encrypted is None:
            return False, f"FAIL: Could not read key from {key_file}", {
                "ini_content": content, "identifier": identifier, "key_file": key_file
            }
        
        # Step 6: Determine company info for validation
        # Extract from filename if possible
        basename = os.path.basename(key_file)
        info_str = basename.replace("HMSKey_", "").replace(".Txt", "").replace(".txt", "")
        
        # Step 7: Validate the key
        valid, msg, details = SerialKeyManager.validate_key(encrypted, info_str)
        
        details = details or {}
        details.update({
            "ini_path": ini_path,
            "ini_content": content,
            "identifier_type": id_type,
            "identifier": identifier,
            "key_file": key_file,
            "company_info": info_str,
            "decrypted": HMSLib.decrypt(encrypted)[:6] + "..." if HMSLib.decrypt(encrypted) else "N/A"
        })
        
        if valid:
            return True, (
                f"✓ SUCCESS: Valid key found for '{info_str}'\n"
                f"  {msg}"
            ), details
        else:
            return False, (
                f"✗ FAIL: Key validation failed for '{info_str}'\n"
                f"  {msg}"
            ), details


# ============================================================
# LICENSE VALIDATOR
# ============================================================

class LicenseValidator:
    """Complete license validation matching frmCompany logic."""

    @staticmethod
    def validate_from_files(base_path, company_name, city, code):
        """
        Validate a company's license by reading HMSKey file.
        
        Follows VB6 Command1_Click and btnapplyNew_Click logic:
          1. Read HMSKey_{combined}.Txt
          2. Decrypt the serial key
          3. Validate prefix (year code)
          4. Validate checksum
          5. Check expiry
        """
        combined = f"{company_name}#{city}#{code}"
        
        # Try to read key file
        key_file = os.path.join(base_path, f"HMSKey_{combined}.Txt")
        encrypted = SerialKeyManager.read_key_from_file(key_file)
        
        if encrypted is None:
            return False, f"No HMSKey file found for '{combined}'", {}
        
        # Validate
        return SerialKeyManager.validate_key(encrypted, combined)

    @staticmethod
    def get_license_summary(base_path):
        """
        Get a summary of all licenses found in the base path.
        """
        companies = CompInfoManager.find_all_compinfo(base_path)
        results = []
        
        for comp in companies:
            combined = comp["raw"]
            key_file = os.path.join(base_path, f"HMSKey_{combined}.Txt")
            encrypted = SerialKeyManager.read_key_from_file(key_file)
            
            status = "No Key File"
            details = {}
            
            if encrypted:
                valid, msg, details = SerialKeyManager.validate_key(encrypted, combined)
                status = "VALID" if valid else f"INVALID: {msg}"
            
            results.append({
                "company": comp["company_name"],
                "city": comp["city"],
                "code": comp["code"],
                "combined": combined,
                "key_file": key_file,
                "has_key": encrypted is not None,
                "status": status,
                "details": details,
            })
        
        return results


# ============================================================
# CLI INTERFACE
# ============================================================

def clear_screen():
    os.system("cls" if os.name == "nt" else "clear")

def print_header(title):
    print("=" * 65)
    print(f"  HMS SERIAL KEY MANAGER - {title}")
    print("=" * 65)

def print_menu(options):
    for key, (desc, _) in options.items():
        print(f"  [{key}] {desc}")
    print()

def wait_for_enter():
    input("\n  Press Enter to continue...")

def cmd_generate_key(base_path):
    """Generate a new serial key."""
    print_header("GENERATE SERIAL KEY")
    
    company = input("  Company Name: ").strip()
    if not company:
        print("  Cancelled.")
        return
    
    city = input("  City: ").strip()
    code = input("  Code: ").strip()
    
    print("\n  Select Year Prefix:")
    prefixes = list(YEAR_PREFIXES.keys())
    for i, pref in enumerate(prefixes, 1):
        print(f"    [{i}] {pref} -> {YEAR_PREFIXES[pref]}")
    
    try:
        choice = int(input("\n  Choice [1-9]: ").strip())
        prefix = prefixes[choice - 1]
    except (ValueError, IndexError):
        print("  Invalid choice, using 'Pinaca' (2027)")
        prefix = "Pinaca"
    
    encrypted, raw_key, combined = SerialKeyManager.generate_key(company, city, code, prefix)
    
    print(f"\n  {'=' * 50}")
    print(f"  Company:      {company}")
    print(f"  City:         {city}")
    print(f"  Code:         {code}")
    print(f"  Combined:     {combined}")
    print(f"  Prefix:       {prefix}")
    print(f"  Checksum:     {raw_key[6:16]}")
    print(f"  Raw Key:      {raw_key}")
    print(f"  Encrypted:    {encrypted!r}")
    print(f"  {'=' * 50}")
    
    # Option to save
    save = input("\n  Save to file? (y/N): ").strip().lower()
    if save == "y":
        # Write CompInfo
        comp_path = CompInfoManager.write_compinfo(base_path, company, city, code)
        print(f"  CompInfo saved: {comp_path}")
        
        # Write HMSKey
        hms_path = os.path.join(base_path, f"HMSKey_{combined}.Txt")
        SerialKeyManager.write_key_to_file(hms_path, encrypted)
        print(f"  HMSKey saved:   {hms_path}")
    
    wait_for_enter()

def cmd_validate_key(base_path):
    """Validate a serial key."""
    print_header("VALIDATE SERIAL KEY")
    
    print("  [1] Validate by company info")
    print("  [2] Validate from existing CompInfo file")
    print("  [3] Validate raw encrypted key")
    
    choice = input("\n  Choice: ").strip()
    
    if choice == "1":
        company = input("  Company Name: ").strip()
        city = input("  City: ").strip()
        code = input("  Code: ").strip()
        
        valid, msg, details = LicenseValidator.validate_from_files(
            base_path, company, city, code
        )
        
        print(f"\n  Status: {'✓ VALID' if valid else '✗ ' + msg}")
        if details:
            print(f"  Prefix:       {details.get('prefix', 'N/A')}")
            print(f"  License Date: {details.get('license_date', 'N/A')}")
            print(f"  Days Left:    {details.get('days_left', 'N/A')}")
    
    elif choice == "2":
        companies = CompInfoManager.find_all_compinfo(base_path)
        if not companies:
            print("  No CompInfo files found!")
        else:
            for i, comp in enumerate(companies, 1):
                print(f"  [{i}] {comp['company_name']} - {comp['city']} ({comp['code']})")
            
            try:
                idx = int(input("\n  Select: ").strip()) - 1
                comp = companies[idx]
                valid, msg, details = LicenseValidator.validate_from_files(
                    base_path, comp["company_name"], comp["city"], comp["code"]
                )
                print(f"\n  Company: {comp['company_name']}")
                print(f"  Status: {'✓ VALID' if valid else '✗ ' + msg}")
                if details:
                    print(f"  Prefix:       {details.get('prefix', 'N/A')}")
                    print(f"  License Date: {details.get('license_date', 'N/A')}")
                    print(f"  Days Left:    {details.get('days_left', 'N/A')}")
            except (ValueError, IndexError):
                print("  Invalid selection.")
    
    elif choice == "3":
        encrypted = input("  Enter encrypted key: ").strip()
        company_info = input("  Company info (Name#City#Code): ").strip()
        
        valid, msg, details = SerialKeyManager.validate_key(encrypted, company_info)
        print(f"\n  Status: {'✓ VALID' if valid else '✗ ' + msg}")
        if details:
            print(f"  Decoded prefix: {details.get('prefix', 'N/A')}")
            print(f"  License Date:   {details.get('license_date', 'N/A')}")
    
    wait_for_enter()

def cmd_show_config(base_path):
    """Show Analysis.ini configuration."""
    print_header("ANALYSIS.INI CONFIGURATION")
    
    config = AnalysisConfig(base_path)
    if not config.config:
        print("  No Analysis.ini found or file is empty.")
    else:
        print(f"  Database Server:  {config.db_server}")
        print(f"  Database Name:    {config.database_name}")
        print(f"  Reports Path:     {config.reports_path}")
        print(f"  Temp Path:        {config.temp_path}")
        print(f"  Backup Path:      {config.backup_path}")
        print(f"  Printer:          {config.printer}")
        print(f"  Site Code:        {config.site_code}")
        print(f"  City:             {config.city}")
        print(f"  Image Path:       {config.image_path}")
        print(f"  Modules:          {len(config.modules)} defined")
        print(f"\n  Raw config:")
        for k, v in config.config.items():
            print(f"    {k} = {v}")
    
    wait_for_enter()

def cmd_read_sysdm(base_path):
    """Read and decrypt sysdm.ocx credentials."""
    print_header("sysdm.ocx - DB CREDENTIALS")
    
    reader = SysdmReader(base_path)
    if reader.read():
        print(f"  Decrypted Username: {reader.username}")
        print(f"  Decrypted Password: {reader.password}")
        print(f"\n  Connection String:")
        print(f"  {reader.get_connection_string()}")
    else:
        print("  No sysdm.ocx file found or unable to read.")
    
    wait_for_enter()

def cmd_license_summary(base_path):
    """Show license summary for all companies."""
    print_header("LICENSE SUMMARY")
    
    results = LicenseValidator.get_license_summary(base_path)
    
    if not results:
        print("  No CompInfo files found. Generate some first.")
    else:
        print(f"  {'Company':<30} {'City':<15} {'Status':<20}")
        print(f"  {'-'*30} {'-'*15} {'-'*20}")
        for r in results:
            status = r["status"][:20] if len(r["status"]) > 20 else r["status"]
            print(f"  {r['company']:<30} {r['city']:<15} {status:<20}")
    
    wait_for_enter()

def cmd_decrypt_text():
    """Decrypt a text string."""
    print_header("DECRYPT TEXT")
    encrypted = input("  Enter encrypted text: ").strip()
    decrypted = HMSLib.decrypt(encrypted)
    print(f"\n  Encrypted: {encrypted!r}")
    print(f"  Decrypted: {decrypted!r}")
    wait_for_enter()

def cmd_encrypt_text():
    """Encrypt a text string."""
    print_header("ENCRYPT TEXT")
    text = input("  Enter text to encrypt: ").strip()
    shift = input("  Shift char (optional, Enter for random): ").strip()
    
    if shift:
        encrypted = HMSLib.encrypt(text, shift)
    else:
        encrypted = HMSLib.encrypt(text)
    
    print(f"\n  Original:   {text!r}")
    print(f"  Encrypted:  {encrypted!r}")
    wait_for_enter()

def cmd_generate_all_years(base_path):
    """
    Generate serial keys for ALL year prefixes at once.
    
    Reads company data from:
      1. [DefaultDataBSE] in Analysis.ini (primary)
      2. CompInfo_*.Txt files (fallback)
      
    Generates keys for ALL year prefixes and writes:
      - Individual HMSKey_{company}#{city}#{code}_{year}.Txt files
      - A consolidated text file with all years' keys with headings
    """
    print_header("GENERATE ALL YEARS - SERIAL KEYS")
    
    # --- Step 1: Get company data ---
    config = AnalysisConfig(base_path)
    companies = []
    source = ""
    
    # Try DefaultDataBSE first
    if config.has_default_data():
        companies = config.get_all_companies_from_defaults()
        source = "[DefaultDataBSE] section of Analysis.ini"
        print(f"  ✓ Reading company data from {source}")
    else:
        # Fallback to CompInfo files
        compinfos = CompInfoManager.find_all_compinfo(base_path)
        for ci in compinfos:
            companies.append({
                "company": ci["company_name"],
                "city": ci["city"],
                "code": ci["code"]
            })
        source = "CompInfo_*.Txt files"
        print(f"  ✓ Reading company data from {source}")
    
    if not companies:
        print("\n  ✗ No company data found!")
        print("    Make sure either:")
        print("      - Analysis.ini has [DefaultDataBSE] section with company, city, code")
        print("      - CompInfo_*.Txt files exist in the base path")
        print()
        print("    Example Analysis.ini [DefaultDataBSE] section:")
        print("      [DefaultDataBSE]")
        print("      company=HMS Hotel Pvt Ltd")
        print("      city=kanpur")
        print("      code=1234")
        wait_for_enter()
        return
    
    print(f"  Found {len(companies)} company/companies:\n")
    for i, c in enumerate(companies):
        print(f"    {i+1}. {c['company']:<30} {c['city']:<15} (Code: {c['code']})")
    print()
    
    # --- Step 2: Confirm ---
    confirm = input("  Generate keys for ALL years for ALL companies? (y/N): ").strip().lower()
    if confirm != "y":
        print("  Cancelled.")
        wait_for_enter()
        return
    
    # --- Step 3: Generate keys for ALL years ---
    print(f"\n  {'=' * 60}")
    print(f"  GENERATING KEYS FOR {len(companies)} COMPANY/COMPANIES × {len(YEAR_PREFIXES)} YEARS")
    print(f"  {'=' * 60}\n")
    
    all_output = []  # For consolidated file
    
    for company_data in companies:
        comp_name = company_data["company"]
        city = company_data["city"]
        code = company_data["code"]
        combined = f"{comp_name}#{city}#{code}"
        
        print(f"  {'─' * 55}")
        print(f"  Company: {comp_name}")
        print(f"  City:    {city}")
        print(f"  Code:    {code}")
        print(f"  {'─' * 55}")
        
        # Section header for this company
        all_output.append(f"\n{'=' * 60}")
        all_output.append(f"  COMPANY: {comp_name}")
        all_output.append(f"  CITY:    {city}")
        all_output.append(f"  CODE:    {code}")
        all_output.append(f"  COMBINED: {combined}")
        all_output.append(f"{'=' * 60}")
        all_output.append("")
        
        for prefix, license_date in YEAR_PREFIXES.items():
            try:
                encrypted, raw_key, _ = SerialKeyManager.generate_key(
                    comp_name, city, code, prefix
                )
                decrypted = HMSLib.decrypt(encrypted)
                chk_str = decrypted[6:] if decrypted and len(decrypted) > 6 else "N/A"
                
                # Write individual HMSKey file (VB6 format: HMSKey_{combined}.Txt)
                hmskey_path = os.path.join(base_path, f"HMSKey_{combined}.Txt")
                SerialKeyManager.write_key_to_file(hmskey_path, encrypted)
                
                # Also write year-specific file
                hmskey_year_path = os.path.join(base_path, f"HMSKey_{combined}_{prefix}.Txt")
                SerialKeyManager.write_key_to_file(hmskey_year_path, encrypted)
                
                # Display
                print(f"    {prefix:8s} | License: {license_date} | Chk: {chk_str}")
                
                # Add to consolidated output
                all_output.append(f"  Year: {prefix} | License Date: {license_date}")
                all_output.append(f"  {'─' * 50}")
                all_output.append(f"    Raw Key:      {raw_key}")
                all_output.append(f"    Encrypted:    {encrypted!r}")
                all_output.append(f"    Checksum:     {chk_str}")
                all_output.append(f"    HMSKey File:  HMSKey_{combined}.Txt")
                all_output.append(f"    Year File:    HMSKey_{combined}_{prefix}.Txt")
                all_output.append("")
                
            except Exception as e:
                print(f"    {prefix:8s} | FAILED: {e}")
                all_output.append(f"  Year: {prefix} | FAILED: {e}")
                all_output.append("")
        
        print()
    
    # --- Step 4: Write consolidated year-by-year file ---
    output_filename = f"SerialKeys_AllYears_{datetime.date.today().strftime('%Y%m%d')}.Txt"
    output_path = os.path.join(base_path, output_filename)
    
    # Group by year and write with proper headings
    with open(output_path, "w", encoding="utf-8") as f:
        f.write(f"{'=' * 60}\n")
        f.write(f"  HMS SERIAL KEYS - ALL YEARS\n")
        f.write(f"  Generated: {datetime.datetime.now():%d-%b-%Y %I:%M:%S %p}\n")
        f.write(f"  Source: {source}\n")
        f.write(f"{'=' * 60}\n")
        f.write(f"\n")
        
        # Write year by year
        for prefix, license_date in YEAR_PREFIXES.items():
            f.write(f"\n")
            f.write(f"{'#' * 60}\n")
            f.write(f"#  YEAR: {prefix} | LICENSE DATE: {license_date}\n")
            f.write(f"{'#' * 60}\n")
            f.write(f"\n")
            f.write(f"  {'Company':<30} {'City':<15} {'Code':<8} {'Raw Key':<20} {'Encrypted Key'}\n")
            f.write(f"  {'─'*30} {'─'*15} {'─'*8} {'─'*20} {'─'*40}\n")
            
            for company_data in companies:
                comp_name = company_data["company"]
                city = company_data["city"]
                code = company_data["code"]
                
                encrypted, raw_key, _ = SerialKeyManager.generate_key(
                    comp_name, city, code, prefix
                )
                f.write(f"  {comp_name:<30} {city:<15} {code:<8} {raw_key:<20} {encrypted}\n")
            
            f.write(f"\n")
        
        # Also append the detailed output
        f.write(f"\n{'=' * 60}\n")
        f.write(f"  DETAILED OUTPUT\n")
        f.write(f"{'=' * 60}\n")
        for line in all_output:
            f.write(line + "\n")
    
    print(f"  {'=' * 60}")
    print(f"  ✓ ALL KEYS GENERATED SUCCESSFULLY!")
    print(f"  {'=' * 60}")
    print(f"  Consolidated file: {output_filename}")
    print(f"  Path: {output_path}")
    print(f"  Companies: {len(companies)}, Years: {len(YEAR_PREFIXES)}")
    print(f"  Total keys: {len(companies) * len(YEAR_PREFIXES)}")
    
    # Verify (use year-specific files so each prefix is verified)
    print(f"\n  Verifying all generated keys (using year-specific files)...")
    valid_count = 0
    invalid_count = 0
    for company_data in companies:
        combined = f"{company_data['company']}#{company_data['city']}#{company_data['code']}"
        for prefix in YEAR_PREFIXES:
            hmskey_year_path = os.path.join(base_path, f"HMSKey_{combined}_{prefix}.Txt")
            encrypted = SerialKeyManager.read_key_from_file(hmskey_year_path)
            if encrypted:
                valid, msg, _ = SerialKeyManager.validate_key(encrypted, combined)
                if valid:
                    valid_count += 1
                else:
                    invalid_count += 1
                    print(f"  ✗ FAILED: {company_data['company']} / {prefix}: {msg[:60]}")
            else:
                invalid_count += 1
                print(f"  ✗ FAILED: {company_data['company']} / {prefix}: Could not read key file")
    print(f"  ✓ Valid: {valid_count}, Invalid: {invalid_count}")
    
    wait_for_enter()


def cmd_auto_generate(base_path):
    """
    Auto-generate serial keys for ALL companies found in CompInfo files
    that don't already have a valid HMSKey file.
    
    Reads Analysis.ini for context, scans CompInfo_*.Txt files,
    and generates keys for any company missing a matching HMSKey file.
    """
    print_header("AUTO-GENERATE SERIAL KEYS")
    
    # Read Analysis.ini for context
    config = AnalysisConfig(base_path)
    if config.config:
        print(f"  Analysis.ini: {config.db_server}/{config.database_name}")
        print(f"  Site Code: {config.site_code}")
        print(f"  City: {config.city}")
    else:
        print("  ⚠ Analysis.ini not found")
    print()
    
    # Find all CompInfo files
    companies = CompInfoManager.find_all_compinfo(base_path)
    if not companies:
        print("  ✗ No CompInfo_*.Txt files found!")
        wait_for_enter()
        return
    
    print(f"  Found {len(companies)} company/companies in CompInfo files:\n")
    
    # Check each company for matching HMSKey
    results = []
    for comp in companies:
        combined = comp["raw"]
        hmskey_path = os.path.join(base_path, f"HMSKey_{combined}.Txt")
        has_key = os.path.exists(hmskey_path)
        
        if has_key:
            # Read existing key
            encrypted = SerialKeyManager.read_key_from_file(hmskey_path)
            if encrypted:
                valid, msg, _ = SerialKeyManager.validate_key(encrypted, combined)
                status = "✓ VALID" if valid else f"✗ INVALID"
            else:
                status = "✗ UNREADABLE"
        else:
            status = "MISSING"
        
        results.append({
            "company": comp["company_name"],
            "city": comp["city"],
            "code": comp["code"],
            "combined": combined,
            "has_key": has_key,
            "status": status,
        })
        
        # Show status
        print(f"  {comp['company_name']:<30} {comp['city']:<15} [{status}]")
    
    print()
    
    # Find companies that need keys
    missing = [r for r in results if r["status"] in ("MISSING", "✗ INVALID", "✗ UNREADABLE")]
    
    if not missing:
        print("  ✓ All companies already have valid keys!")
        wait_for_enter()
        return
    
    print(f"  {len(missing)} company/companies need new keys.")
    
    # Ask user to confirm
    confirm = input("\n  Generate keys for all? (y/N): ").strip().lower()
    if confirm != "y":
        print("  Cancelled.")
        wait_for_enter()
        return
    
    # Ask for year prefix
    print("\n  Select Year Prefix:")
    prefix_list = list(YEAR_PREFIXES.keys())
    for i, pref in enumerate(prefix_list, 1):
        print(f"    [{i}] {pref} -> {YEAR_PREFIXES[pref]}")
    try:
        choice = int(input(f"\n  Choice [1-{len(prefix_list)}]: ").strip())
        prefix = prefix_list[choice - 1]
    except (ValueError, IndexError):
        print("  Invalid choice, using 'Pinaca' (2027)")
        prefix = "Pinaca"
    
    print(f"\n  Generating keys with prefix: {prefix}")
    print()
    
    # Generate keys
    generated = 0
    failed = 0
    for item in missing:
        try:
            encrypted, raw_key, combined = SerialKeyManager.generate_key(
                item["company"], item["city"], item["code"], prefix
            )
            
            # Write HMSKey file
            hmskey_path = os.path.join(base_path, f"HMSKey_{combined}.Txt")
            SerialKeyManager.write_key_to_file(hmskey_path, encrypted)
            
            print(f"  ✓ {item['company']:<30} {item['city']:<15} -> HMSKey_{combined}.Txt")
            print(f"    Raw Key: {raw_key}")
            generated += 1
        except Exception as e:
            print(f"  ✗ {item['company']:<30} FAILED: {e}")
            failed += 1
    
    print()
    print(f"  {'=' * 50}")
    print(f"  Generated: {generated}, Failed: {failed}")
    
    # Verify generated keys
    if generated > 0:
        print(f"\n  Verifying generated keys...")
        for item in missing:
            combined = item["combined"]
            hmskey_path = os.path.join(base_path, f"HMSKey_{combined}.Txt")
            encrypted = SerialKeyManager.read_key_from_file(hmskey_path)
            if encrypted:
                valid, msg, _ = SerialKeyManager.validate_key(encrypted, combined)
                status = "✓" if valid else f"✗ {msg[:50]}"
                print(f"  {status} {item['company']:<30}")
    
    wait_for_enter()


def cmd_checksum_calc():
    """Calculate checksum for a string."""
    print_header("CHECKSUM CALCULATOR")
    text = input("  Enter text: ").strip()
    chk = HMSLib.checksum(text)
    print(f"\n  Input:    {text}")
    print(f"  Checksum: {chk}")
    wait_for_enter()

def cmd_hmskey_ini_manage(base_path):
    """Create/Manage HMSKey.ini file."""
    print_header("HMSKey.ini MANAGEMENT")
    
    ini_path = HMSKeyIniManager.get_ini_path(base_path)
    exists = os.path.exists(ini_path)
    
    print(f"  HMSKey.ini path: {ini_path}")
    print(f"  Status: {'✓ EXISTS' if exists else '✗ NOT FOUND'}")
    
    if exists:
        content = HMSKeyIniManager.read_ini(base_path)
        print(f"  Current content: {content!r}")
        print()
    
    print("  [1] Create/Update with drive path (C:\\ → volume serial)")
    print("  [2] Create/Update with company identifier (Name#City#Code)")
    print("  [3] Create/Update with custom text")
    print("  [4] Detect C: drive volume serial and use it")
    print("  [5] Delete HMSKey.ini")
    print("  [Q] Back")
    
    choice = input("\n  Choice: ").strip()
    
    if choice == "1":
        HMSKeyIniManager.create_ini(base_path, "C:\\")
        print("  ✓ HMSKey.ini created with content: C:\\")
        # Test what identifier this produces
        id_type, identifier = HMSKeyIniManager.extract_identifier(base_path)
        print(f"  → This resolves to: {id_type} = {identifier}")
    elif choice == "2":
        company = input("  Company Name: ").strip()
        city = input("  City: ").strip()
        code = input("  Code: ").strip()
        combined = f"{company}#{city}#{code}"
        HMSKeyIniManager.create_ini(base_path, combined)
        print(f"  ✓ HMSKey.ini created with content: {combined}")
    elif choice == "3":
        custom = input("  Custom content: ").strip()
        if custom:
            HMSKeyIniManager.create_ini(base_path, custom)
            print(f"  ✓ HMSKey.ini created with content: {custom}")
    elif choice == "4":
        ser_int, ser_str, vol_name = VolumeSerialDetector.get_volume_serial("C:\\")
        if ser_int is not None:
            HMSKeyIniManager.create_ini(base_path, "C:\\")
            print(f"  ✓ HMSKey.ini created with C:\\")
            print(f"  → C: drive volume serial: {ser_int} (0x{ser_int:08X})")
            print(f"  → Volume name: {vol_name}")
        else:
            print("  ✗ Could not detect volume serial!")
    elif choice == "5":
        if exists:
            os.remove(ini_path)
            print("  ✓ HMSKey.ini deleted")
            # Remove directory if empty
            ini_dir = os.path.join(base_path, "HMSKey")
            if os.path.isdir(ini_dir) and not os.listdir(ini_dir):
                os.rmdir(ini_dir)
                print("  ✓ Empty HMSKey directory removed")
        else:
            print("  HMSKey.ini does not exist.")
    
    wait_for_enter()

def cmd_serialkey_validation(base_path):
    """
    Run the complete SerialKey.exe validation flow.
    
    Matches VB6 Command1_Click step by step:
      1. Check HMSKey\\HMSKey.ini
      2. Read its content
      3. Extract identifier (drive serial or company info)
      4. Find matching HMSKey file
      5. Read and decrypt key
      6. Validate
    """
    print_header("SERIALKEY.EXE VALIDATION FLOW")
    print("  Replicating VB6 Command1_Click logic...\n")
    
    # Also simulate audit logging like the original SerialKey.exe
    print("  [Audit Log]")
    print(f"  {datetime.datetime.now():%m/%d/%Y %I:%M:%S %p} | === SerialKey Validation Started ===")
    print(f"  {datetime.datetime.now():%m/%d/%Y %I:%M:%S %p} | Base Path: {base_path}")
    print()
    
    # Step 1: Check Analysis.ini
    ini_path = os.path.join(base_path, "Analysis.ini")
    if os.path.exists(ini_path):
        print(f"  ✓ Analysis.ini found: reading config")
        config = AnalysisConfig(base_path)
        print(f"    SQL Server: {config.db_server}")
        print(f"    Database:   {config.database_name}")
    else:
        print(f"  ⚠ Analysis.ini not found at {ini_path}")
    
    # Step 2: Check sysdm.ocx
    sysdm_path = os.path.join(base_path, "sysdm.ocx")
    if os.path.exists(sysdm_path):
        print(f"  ✓ sysdm.ocx found: decrypting credentials")
        reader = SysdmReader(base_path)
        if reader.read():
            print(f"    DB Username: {reader.username or '(decrypt failed, using default)'}")
            print(f"    DB Password: {'✓ decrypted' if reader.password else '(decrypt failed)'}")
        else:
            print(f"    ⚠ Could not decrypt sysdm.ocx")
    else:
        print(f"  ⚠ sysdm.ocx not found")
    
    print()
    
    # Step 3: Run the validation flow
    success, msg, details = HMSKeyIniManager.run_validation_flow(base_path)
    
    print(f"  {'=' * 50}")
    print(f"  RESULT: {'✓ PASS' if success else '✗ FAIL'}")
    print(f"  {'=' * 50}")
    print(f"  {msg}")
    
    if details:
        print(f"\n  Details:")
        if details.get("ini_path"):
            print(f"    HMSKey.ini:      {details['ini_path']}")
            print(f"    INI content:     {details.get('ini_content', 'N/A')}")
            print(f"    Identifier type: {details.get('identifier_type', 'N/A')}")
            print(f"    Identifier:      {details.get('identifier', 'N/A')}")
        if details.get("key_file"):
            print(f"    Key file:        {details['key_file']}")
        if details.get("prefix"):
            print(f"    Key prefix:      {details['prefix']}")
            print(f"    License date:    {details.get('license_date', 'N/A')}")
            print(f"    Days left:       {details.get('days_left', 'N/A')}")
    
    wait_for_enter()

def main():
    """Main CLI entry point."""
    base_path = os.path.dirname(os.path.abspath(__file__))
    
    # Allow overriding base path via command line arg
    if len(sys.argv) > 1:
        base_path = sys.argv[1]
    
    while True:
        clear_screen()
        print_header("MAIN MENU")
        print(f"  Base Path: {base_path}\n")
        print("  [1] Generate Serial Key")
        print("  [2] Validate Serial Key")
        print("  [3] License Summary")
        print("  [4] Show Analysis.ini Config")
        print("  [5] Read sysdm.ocx Credentials")
        print("  [6] Decrypt Text")
        print("  [7] Encrypt Text")
        print("  [8] Calculate Checksum")
        print("  [9] Run SerialKey.exe Validation Flow")
        print("  [A] Auto-Generate Keys from CompInfo files")
        print("  [Y] Generate ALL Years Keys (All 9 prefixes) + Text File")
        print("  [H] Manage HMSKey.ini")
        print("  [Q] Quit")
        print()
        
        choice = input("  Select: ").strip().upper()
        
        if choice == "1":
            cmd_generate_key(base_path)
        elif choice == "2":
            cmd_validate_key(base_path)
        elif choice == "3":
            cmd_license_summary(base_path)
        elif choice == "4":
            cmd_show_config(base_path)
        elif choice == "5":
            cmd_read_sysdm(base_path)
        elif choice == "6":
            cmd_decrypt_text()
        elif choice == "7":
            cmd_encrypt_text()
        elif choice == "8":
            cmd_checksum_calc()
        elif choice == "9":
            cmd_serialkey_validation(base_path)
        elif choice == "A":
            cmd_auto_generate(base_path)
        elif choice == "Y":
            cmd_generate_all_years(base_path)
        elif choice == "H":
            cmd_hmskey_ini_manage(base_path)
        elif choice == "Q":
            print("\n  Exiting. Goodbye!")
            sys.exit(0)


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n  Interrupted.")
        sys.exit(0)
