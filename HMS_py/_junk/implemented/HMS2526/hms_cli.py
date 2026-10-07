import os
import sys
import datetime
import getpass

# --- CONSTANTS & PATHS ---
HMS_PATH = r"C:\Drive\HMS2526"
INI_FILE = os.path.join(HMS_PATH, "Analysis.ini")
LOG_FILE = os.path.join(HMS_PATH, "hms_cli_log.txt")

# --- CORE LIBRARIES (REPLICATING .BAS MODULES) ---

class HMSLib:
    @staticmethod
    def decrypt(text):
        """Proc_4_28_EE7B5C"""
        if not text: return ""
        try:
            shift = ord(text[0]) - 27
            return "".join(chr(ord(c) - 27 - shift) for c in text[1:])
        except: return ""

    @staticmethod
    def encrypt(text, shift_char='A'):
        shift = ord(shift_char) - 27
        return shift_char + "".join(chr(ord(c) + 27 + shift) for c in text)

    @staticmethod
    def checksum(sname):
        """EXACT VB6 REPLICATION: loc_11164BA"""
        if not sname: return "0"
        sname = sname.strip().upper()
        # Start: Asc(Mid(arg_C, 1, 1)) * 10
        val = ord(sname[0]) * 10
        # Loop: If ((var_E8 * 10) < 9999) Then var_E8 = (var_E8 * 10)
        while (val * 10) < 9999:
            val *= 10
        # Add each char: var_E8 = (var_E8 + CLng(Asc(var_E0)))
        total = val + sum(ord(c) for c in sname)
        return str(total)

def log(msg):
    ts = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    with open(LOG_FILE, "a") as f:
        f.write(f"[{ts}] {msg}\n")

# --- MOCKED DATABASE LAYER ---

class HMSDatabase:
    USERS = {"SA": "India12"}
    COMPANIES = [
        {"code": "01", "name": "Plaza Hotel", "sname": "PLAZA"},
        {"code": "02", "name": "Royal Inn", "sname": "ROYAL"},
    ]
    ROOMS = [
        {"no": "101", "type": "Deluxe", "status": "Available", "rate": 2500},
        {"no": "102", "type": "Super Deluxe", "status": "Occupied", "rate": 3500},
    ]
    RESERVATIONS = []

# --- CONTROLLERS (REPLICATING .FRM MODULES) ---

class Controller:
    @staticmethod
    def header(title):
        os.system('cls' if os.name == 'nt' else 'clear')
        print("="*70)
        print(f" HMS CLI v2.5 - {title.upper()}")
        print("="*70)

import msvcrt

def get_masked_input(prompt="Password: "):
    print(prompt, end='', flush=True)
    password = ""
    while True:
        ch = msvcrt.getch()
        if ch in [b'\r', b'\n']: # Enter key
            print()
            return password
        elif ch == b'\x08': # Backspace
            if len(password) > 0:
                password = password[:-1]
                print('\b \b', end='', flush=True)
        else:
            try:
                char = ch.decode('utf-8')
                password += char
                print('*', end='', flush=True)
            except:
                pass

class LoginController(Controller):
    def run(self):
        self.header("Authentication")
        user = input("User Name: ").upper()
        # Replaced getpass with masked input to mirror VB6 behavior
        pwd = get_masked_input("Password: ")
        if user in HMSDatabase.USERS and HMSDatabase.USERS[user] == pwd:
            log(f"Login Success: {user}")
            return user
        log(f"Login Failed: {user}")
        input("Invalid Credentials. Press Enter...")
        return None

class CompanyController(Controller):
    def run(self):
        self.header("Company Selection")
        for i, c in enumerate(HMSDatabase.COMPANIES):
            print(f" [{i+1}] {c['name']} ({c['sname']})")
        print(" [Q] Exit")
        choice = input("\nChoice: ")
        if choice.lower() == 'q': return None
        try:
            return HMSDatabase.COMPANIES[int(choice)-1]
        except: return None

class FrontOfficeController(Controller):
    def __init__(self, company):
        self.company = company

    def run(self):
        while True:
            self.header(f"Front Office - {self.company['name']}")
            print(" [1] Room Display / Status")
            print(" [2] Check-In (Walk-In)")
            print(" [3] Check-Out / Settlement")
            print(" [4] Guest Search")
            print(" [5] Back to Main Menu")
            choice = input("\nSelect: ")
            if choice == "1": self.room_display()
            elif choice == "5": break

    def room_display(self):
        self.header("Room Status")
        print(f"{'No':<5} | {'Type':<15} | {'Status':<12} | {'Rate':<10}")
        print("-" * 50)
        for r in HMSDatabase.ROOMS:
            print(f"{r['no']:<5} | {r['type']:<15} | {r['status']:<12} | {r['rate']:<10}")
        input("\nPress Enter...")

class FinanceController(Controller):
    def run(self):
        while True:
            self.header("Finance / Accounting")
            print(" [1] Voucher Entry")
            print(" [2] Cash Book")
            print(" [3] Bank Book")
            print(" [4] Trial Balance")
            print(" [5] Back to Main Menu")
            if input("\nSelect: ") == "5": break

class MainSetupController(Controller):
    def __init__(self, company):
        self.company = company

    def run(self):
        while True:
            self.header("Main Setup / Masters")
            print(" [1] Tax Master")
            print(" [2] Room Master")
            print(" [3] User Permissions")
            print(" [4] Serial Key Management")
            print(" [5] Back to Main Menu")
            choice = input("\nSelect: ")
            if choice == "4": self.serial_mgmt()
            elif choice == "5": break

    def verify_key_logic(self, serial_key):
        """EXACT VB6 REPLICATION: loc_11166C2"""
        dec = HMSLib.decrypt(serial_key)
        if not dec: return False, "Invalid Format"
        
        prefix = dec[:6]
        key_chk = dec[6:16].strip()
        target_chk = HMSLib.checksum(self.company['sname'])
        
        if key_chk != target_chk:
            return False, f"Checksum Mismatch! (Target: {target_chk})"
            
        expiry_str = get_expiry(prefix)
        expiry_date = datetime.datetime.strptime(expiry_str, "%Y-%m-%d")
        current_date = datetime.datetime.now()
        
        # VB6 Logic: If (Current > Expiry + 45 days) Then Expired
        grace_date = expiry_date + datetime.timedelta(days=45)
        
        if current_date > grace_date:
            return False, f"SOFTWARE EXPIRED on {grace_date.strftime('%d/%m/%Y')}"
            
        days_left = (grace_date - current_date).days
        return True, f"VALID. Grace Period Ends in {days_left} Days."

    def serial_mgmt(self):
        while True:
            self.header("Security - Serial Key")
            print(f" Company: {self.company['name']} ({self.company['sname']})")
            print("-" * 40)
            print(" [1] Verify Key")
            print(" [2] Generate Key")
            print(" [3] Back")
            c = input("\nChoice: ")
            if c == "1":
                key = input("Enter Key: ")
                valid, msg = self.verify_key_logic(key)
                print(f"\nSTATUS: {msg}")
                input("\nPress Enter...")
            elif c == "2":
                chk = HMSLib.checksum(self.company['sname'])
                print("\nYears: [1] 2025 [2] 2026 [3] 2027")
                yr = input("Choice: ")
                pref = {"1": "Hudhud", "2": "Pirecy", "3": "Pinaca"}.get(yr, "Hudhud")
                key = HMSLib.encrypt(pref + chk.ljust(10))
                print(f"Generated Key ({pref}): {key}")
                input("\nPress Enter...")
            elif c == "3": break

# --- MAIN APPLICATION ENGINE ---

class HMSApp:
    def __init__(self):
        self.user = None
        self.company = None

    def start(self):
        log("HMS CLI Engine Started")
        while not self.user:
            self.user = LoginController().run()
        
        while True:
            self.company = CompanyController().run()
            if not self.company: break
            self.main_menu()

    def main_menu(self):
        while True:
            Controller.header(f"HMS Main - {self.company['name']} (User: {self.user})")
            print(" [F] Finance & Accounts")
            print(" [M] Main Setup / Masters")
            print(" [R] Reservation System")
            print(" [O] Front Office Operations")
            print(" [P] Point Of Sale (POS)")
            print(" [S] Switch Company")
            print(" [Q] Logout")
            print("-" * 70)
            
            choice = input("Select Module: ").upper()
            if choice == "F": FinanceController().run()
            elif choice == "M": MainSetupController(self.company).run()
            elif choice == "O": FrontOfficeController(self.company).run()
            elif choice == "S": break
            elif choice == "Q": sys.exit()

if __name__ == "__main__":
    try:
        HMSApp().start()
    except KeyboardInterrupt:
        print("\nInterrupted.")
        sys.exit(0)
