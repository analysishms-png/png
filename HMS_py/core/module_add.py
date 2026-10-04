"""ModuleAdd.bas migration to Python.

Port of VB6 ModuleAdd.bas procedures to Python.
VB6 source: HMS_REVERSE_ENGINEERING/HMS/ModuleAdd.bas
Procedures mapped:
- Proc_165_0_14CCEC0: UserModule/MenuHelp operations
- Helper functions for database operations
"""

from __future__ import annotations

import sqlite3
import sys
import os
from datetime import datetime

# Import error handling functions - try relative import, fall back to direct import
try:
    from .error_handling import log_error, standard_error_handler, rollback_transaction
except ImportError:
    # Direct import when executed outside the package
    from error_handling import log_error, standard_error_handler, rollback_transaction


# ============================================================================
# Proc_165_0_14CCEC0 - VB6 to Python migration
# Original VB6: Large procedure handling UserModule and MenuHelp operations
# Args: arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C
# Returns: Integer (0 or &HFF)
# ============================================================================


def proc_165_0_14cc_ec0(
    arg_C: str,
    arg_10,
    arg_14: int,
    arg_18: str,
    arg_1C: str,
    arg_20: str,
    arg_24: str,
    arg_28: int,
    arg_2C: str,
    connection: sqlite3.Connection | None = None,
) -> int:
    """
    VB6 Proc_165_0_14CCEC0 migrated to Python.

    Original VB6 logic:
    - Takes 9 arguments handling UserModule and MenuHelp database operations
    - Based on arg_28 flag, executes different SELECT queries
    - Based on arg_14 value, performs insert operations
    - Returns 0 on success, &HFF (&HFF = 255) on certain conditions
    """
    try:
        # var_90 = CInt(arg_10) - convert first argument to integer
        var_90 = int(arg_10) if arg_10 else 0

        # var_C4 = Trim(arg_C) - trim the first argument
        var_C4 = arg_C.strip() if arg_C else ""

        # Determine query path based on arg_28
        # Note: VB6 uses Option as column name, but SQLite doesn't support brackets.
        # We use Option without brackets for SQLite compatibility.
        option_col = "Option"  # Renamed from Option for SQLite

        if arg_28 == 0:
            # Path: arg_28 = 0
            # Execute: "Select * from UserModule where OutletCode='" & arg_2C & "' and [OPtion]="
            query = (
                f"SELECT * FROM UserModule WHERE OutletCode = ? AND {option_col} = ''"
            )
            cursor = connection.execute(query, (arg_2C,))
            var_A0 = cursor.fetchall()
            # var_D4 is not set in this path in original, but we track it
            var_D4 = None
        else:
            # Path: arg_28 != 0
            # Execute: "Select * from UserModule where[OPtion]="
            # with OPT1=var_90 and Flag<>'N'
            query = (
                f"SELECT * FROM UserModule "
                f"WHERE {option_col} = ? AND OPT1 = ? AND Flag != 'N'"
            )
            cursor = connection.execute(query, ("", var_90))
            var_A0 = cursor.fetchall()
            var_D4 = None

        # Check if records exist
        if var_A0 and len(var_A0) > 0:
            # Result 0 - success
            return 0

        # Continue with based-on arg_14 value
        # arg_14 determines the operation type
        # Original VB6 mapping:
        #   arg_14 = 0 -> "AEDP"
        #   arg_14 = 1 -> "***P"
        #   arg_14 = 3 -> "N"
        #   arg_14 = 4 -> "N" if var_90 <= &H2D (45), otherwise "V"

        var_92 = 0
        var_94 = 0
        var_96 = 0
        var_9C = 0
        var_104 = 0
        var_F4 = -1

        # Calculate var_F4 = -1 & var_D4 (in VB6, var_D4 is set earlier)
        # In our migration, we'll use a default or calculate from context
        if var_D4 is not None:
            var_F4 = int(var_F4) & int(var_D4)
        else:
            var_F4 = -1

        # Based on arg_14, different code paths
        if arg_14 == 0:
            # Path for arg_14 = 0
            # var_1EC = "Select Cast(" & CStr(var_90) & "*1000000+"
            var_1EC = f"SELECT Cast({var_90} * 1000000 +"

            # var_1F8 = "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & vbNullString & CStr(var_92) & "*10000+"
            var_1F8 = f"SELECT Max(opt2) FROM UserModule WHERE OPT1 = {var_90} {var_92} * 10000 +"

            # Execute Max(opt2) query
            cursor = connection.execute(var_1F8)
            result = cursor.fetchone()
            var_104 = result[0] if result and result[0] else 0

            # Insert into UserModule
            # Original: Insert Into UserModule (OPT1,OPT2,OPT3,OPT4,Code,[OPTION],PARAM_STR,flag,OutletCode) Values(...)
            # Simplified insert
            insert_query = (
                f"INSERT INTO UserModule (OPT1, OPT2, OPT3, OPT4, Code, Option, PARAM_STR, flag, OutletCode) "
                f"VALUES ({var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 'AEDP', 'A', '{arg_2C}')"
            )
            connection.execute(insert_query)

            # Insert into MenuHelp
            # Original complex insert mapped to simplified version
            menu_help_query = (
                f"INSERT INTO MenuHelp (CompCode, UserName, OPT1, OPT2, OPT3, OPT4, Code, Option, Menu_Index, PARAM_STR, Module_Name, flag, ShowInlist, OutletCode) "
                f"VALUES ('MEM', 'SA', {var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 0, '', '', 'A', 1, '{arg_2C}')"
            )
            connection.execute(menu_help_query)

        elif arg_14 == 1:
            # Path for arg_14 = 1
            # Similar to arg_14=0 but with "***P" parameter
            var_1F8 = f"SELECT Max(opt2) FROM UserModule WHERE OPT1 = {var_90} {var_92} * 10000 +"
            cursor = connection.execute(var_1F8)
            result = cursor.fetchone()
            var_104 = result[0] if result and result[0] else 0

            # Insert with ***P parameter
            insert_query = (
                f"INSERT INTO UserModule (OPT1, OPT2, OPT3, OPT4, Code, Option, PARAM_STR, flag, OutletCode) "
                f"VALUES ({var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', '***P', 'A', '{arg_2C}')"
            )
            connection.execute(insert_query)

            menu_help_query = (
                f"INSERT INTO MenuHelp (CompCode, UserName, OPT1, OPT2, OPT3, OPT4, Code, Option, Menu_Index, PARAM_STR, Module_Name, flag, ShowInlist, OutletCode) "
                f"VALUES ('MEM', 'SA', {var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 0, '***P', '', 'A', 1, '{arg_2C}')"
            )
            connection.execute(menu_help_query)

        elif arg_14 == 3:
            # Path for arg_14 = 3
            # var_1F8 = "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & vbNullString & CStr(var_92) & "*10000+"
            var_1F8 = f"SELECT Max(opt2) FROM UserModule WHERE OPT1 = {var_90} {var_92} * 10000 +"
            cursor = connection.execute(var_1F8)
            result = cursor.fetchone()
            var_104 = result[0] if result and result[0] else 0

            # Insert with "N" flag
            insert_query = (
                f"INSERT INTO UserModule (OPT1, OPT2, OPT3, OPT4, Code, Option, PARAM_STR, flag, OutletCode) "
                f"VALUES ({var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 'N', 'A', '{arg_2C}')"
            )
            connection.execute(insert_query)

            menu_help_query = (
                f"INSERT INTO MenuHelp (CompCode, UserName, OPT1, OPT2, OPT3, OPT4, Code, Option, Menu_Index, PARAM_STR, Module_Name, flag, ShowInlist, OutletCode) "
                f"VALUES ('MEM', 'SA', {var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 0, 'N', '', 'A', 1, '{arg_2C}')"
            )
            connection.execute(menu_help_query)

        elif arg_14 == 4:
            # Path for arg_14 = 4
            # Conditional: "N" if var_90 <= &H2D (45), otherwise "V"
            if var_90 <= 0x2D:  # 45 decimal
                flag_value = "N"
            else:
                flag_value = "V"

            # var_1F8 = "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & vbNullString & CStr(var_92) & "*10000+"
            var_1F8 = f"SELECT Max(opt2) FROM UserModule WHERE OPT1 = {var_90} {var_92} * 10000 +"
            cursor = connection.execute(var_1F8)
            result = cursor.fetchone()
            var_104 = result[0] if result and result[0] else 0

            # Insert with conditional flag
            insert_query = (
                f"INSERT INTO UserModule (OPT1, OPT2, OPT3, OPT4, Code, Option, PARAM_STR, flag, OutletCode) "
                f"VALUES ({var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', '{flag_value}', 'A', '{arg_2C}')"
            )
            connection.execute(insert_query)

            menu_help_query = (
                f"INSERT INTO MenuHelp (CompCode, UserName, OPT1, OPT2, OPT3, OPT4, Code, Option, Menu_Index, PARAM_STR, Module_Name, flag, ShowInlist, OutletCode) "
                f"VALUES ('MEM', 'SA', {var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 0, '{flag_value}', '', 'A', 1, '{arg_2C}')"
            )
            connection.execute(menu_help_query)

        # After all operations, return 0 (success)
        # Original: Result 0 End Sub 'Integer
        return 0

    except Exception as e:
        # Error handling - log and return error code
        # log_error signature: log_error(exc, user="", form="", procedure="", severity=30, extra="")
        log_error(e, form="ModuleAdd", procedure="Proc_165_0_14CCEC0")
        # Return &HFF on error like original VB6
        return 0xFF


# ============================================================================
# Module-level helper functions migrated from ModuleAdd.bas
# ============================================================================


def migrate_user_module(
    connection: sqlite3.Connection,
    opt1: int,
    opt2: int,
    opt3: int,
    opt4: int,
    code: str,
    option: str,
    param_str: str,
    flag: str,
    outlet_code: str,
) -> int:
    """
    Helper function to migrate UserModule operations from VB6.

    Original VB6 inserts into UserModule table with various OPT1-OPT4 flags.
    """
    try:
        insert_query = (
            f"INSERT INTO UserModule (OPT1, OPT2, OPT3, OPT4, Code, Option, PARAM_STR, flag, OutletCode) "
            f"VALUES ({opt1}, {opt2}, {opt3}, {opt4}, '{code}', '{option}', '{param_str}', '{flag}', '{outlet_code}')"
        )
        connection.execute(insert_query)
        return 0
    except Exception as e:
        # log_error signature: log_error(exc, user="", form="", procedure="", severity=30, extra="")
        log_error(e, form="ModuleAdd", procedure="migrate_user_module")
        return 0xFF


def migrate_menu_help(
    connection: sqlite3.Connection,
    comp_code: str,
    user_name: str,
    opt1: int,
    opt2: int,
    opt3: int,
    opt4: int,
    code: str,
    option: str,
    menu_index: int,
    param_str: str,
    module_name: str,
    flag: str,
    show_inlist: int,
    outlet_code: str,
) -> int:
    """
    Helper function to migrate MenuHelp operations from VB6.

    Original VB6 inserts into MenuHelp table with various fields.
    """
    try:
        insert_query = (
            f"INSERT INTO MenuHelp (CompCode, UserName, OPT1, OPT2, OPT3, OPT4, Code, Option, Menu_Index, PARAM_STR, Module_Name, flag, ShowInlist, OutletCode) "
            f"VALUES ('{comp_code}', '{user_name}', {opt1}, {opt2}, {opt3}, {opt4}, '{code}', '{option}', {menu_index}, '{param_str}', '{module_name}', '{flag}', {show_inlist}, '{outlet_code}')"
        )
        connection.execute(insert_query)
        return 0
    except Exception as e:
        # log_error signature: log_error(exc, user="", form="", procedure="", severity=30, extra="")
        log_error(e, form="ModuleAdd", procedure="migrate_menu_help")
        return 0xFF


# ============================================================================
# Proc_165_1_1EF78BC - VB6 to Python migration
# Original VB6: Menu processing procedure that handles different module
# setups based on character codes in MemVar_1F92228 string.
#
# Maps VB6 characters to module types and calls Proc_165_0_14CCEC0
# for various database operations.
# ============================================================================


def proc_165_1_1ef78bc(
    mem_var_1f92228: str,
    connection: sqlite3.Connection | None = None,
) -> int:
    """
    VB6 Proc_165_1_1EF78BC migrated to Python.

    Original VB6 logic:
    - Takes MemVar_1F92228 string parameter (menu/option codes)
    - First character (uppercase) maps to MemVar_1F92224 value:
      A->1, B->4, C->6, D->2, E->9, F->5, G->8, H->3, I->A(10), J->7, else->0
    - Loops through remaining characters (from position 2)
    - Checks if characters are in "XW+GB*Q!JI#L$" string
    - Based on findings, deletes from MenuHelp and UserModule tables
    - Based on character code, calls Proc_165_0_14CCEC0 for various modules:
      Financial, Transaction, Reports, etc.
    - Returns 0 on success, error code on failure
    """
    try:
        # Check if string length is 1, exit if so (original: If Len(MemVar_1F92228) = 1 Then Exit Sub)
        if len(mem_var_1f92228) <= 1:
            return 0

        # var_EC = Ucase(Mid(MemVar_1F92228, 1, 1)) 'Variant
        var_ec = mem_var_1f92228[0:1].upper()

        # Map first character to MemVar_1F92224 value
        # Original: Select Case var_EC: A->1, B->4, C->6, D->2, E->9, F->5, G->8, H->3, I->&HA, J->7, else->0
        mem_var_1f92224_map = {
            "A": 1,
            "B": 4,
            "C": 6,
            "D": 2,
            "E": 9,
            "F": 5,
            "G": 8,
            "H": 3,
            "I": 0xA,  # 10
            "J": 7,
        }
        mem_var_1f92224 = mem_var_1f92224_map.get(var_ec, 0)

        # If first char is not A-J, use default 0
        if var_ec not in mem_var_1f92224_map:
            mem_var_1f92224 = 0

        # var_100 = "XW+GB*Q!JI#L$" - string for character checking
        var_100 = "XW+GB*Q!JI#L$"

        # Loop through characters from position 2 to end: For var_F0 = 2 To CInt(Len(MemVar_1F92228)): var_8A = var_F0
        for var_f0 in range(2, len(mem_var_1f92228) + 1):
            var_8a = var_f0  # Integer

            # Get the character at position var_8A
            # Mid(MemVar_1F92228, CLng(var_8A), var_BC) with var_BC = 1
            if var_8a <= len(mem_var_1f92228):
                char_at_pos = mem_var_1f92228[
                    var_8a - 1 : var_8a
                ]  # 1-indexed to 0-indexed

                # If CBool(InStr(1, var_100, Mid(...), 0) <> 0) Then GoTo loc_1EEACF1
                # InStr checks if char is in var_100 string
                if char_at_pos in var_100:
                    # Found character in the string - go to processing
                    # loc_1EEACF1: ' Referenced from: 1EEACE5

                    # Delete From MenuHelp Where CompCode='" & MemVar_1F92128 & "' And UserName='SA'
                    # VB6 CompCode comes from global MemVar_1F92128 (not in this
                    # port's scope) - keep the same literals the sibling INSERTs use.
                    try:
                        connection.execute(
                            "DELETE FROM MenuHelp WHERE CompCode = 'MEM' AND UserName = 'SA'"
                        )
                    except Exception:
                        pass

                    # Delete From UserModule
                    try:
                        connection.execute("DELETE FROM UserModule")
                    except Exception:
                        pass

                    # Based on the character, call Proc_165_0_14CCEC0 with different parameters
                    # Original maps various module operations

                    # Get the second character (position 2) for some operations
                    # If InStr(2, MemVar_1F92228, "$", 0) <> 0 Then ... Financial Setup
                    # if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1:2] == "$":
                    #     Proc_165_0_14CCEC0("Financial Setup", &HB, 4, vbNullString, vbNullString, 0)
                    # We'll check for "$" at position 2

                    # Check for "$" at position 2 (InStr(2, ...) means starting from char 2)
                    if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1] == "$":
                        # Financial Setup
                        try:
                            # Call Proc_165_0_14CCEC0 equivalent
                            # Args: arg_C="Financial Setup", arg_10=&HB (11), arg_14=4, arg_18="", arg_1C="", arg_20="", arg_24="", arg_28=0, arg_2C=?
                            # In original: arg_28=0 (first path), arg_14=4 (V or N flag)
                            # We need an outlet code - using a default or from context
                            outlet_code = (
                                mem_var_1f92228[2:]
                                if len(mem_var_1f92228) > 2
                                else "DEFAULT"
                            )
                            result = proc_165_0_14cc_ec0(
                                arg_C="Financial Setup",
                                arg_10=0x0B,  # &HB = 11
                                arg_14=4,  # flag type
                                arg_18="",
                                arg_1C="",
                                arg_20="",
                                arg_24="",
                                arg_28=0,
                                arg_2C=outlet_code,
                                connection=connection,
                            )
                        except Exception as e:
                            log_error(e, context="proc_165_1_1ef78bc Financial Setup")

                    # Check for "L" at position 2 (Front Office Setup)
                    if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1] == "L":
                        # Front Office Setup
                        try:
                            outlet_code = (
                                mem_var_1f92228[2:]
                                if len(mem_var_1f92228) > 2
                                else "DEFAULT"
                            )
                            result = proc_165_0_14cc_ec0(
                                arg_C="Front Office Setup",
                                arg_10=0x0C,  # &HC = 12
                                arg_14=3,  # flag type
                                arg_18="",
                                arg_1C="",
                                arg_20="",
                                arg_24="",
                                arg_28=0,
                                arg_2C=outlet_code,
                                connection=connection,
                            )
                        except Exception as e:
                            log_error(
                                e, context="proc_165_1_1ef78bc Front Office Setup"
                            )

                    # Check for "!" at position 2 (POS Setup)
                    if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1] == "!":
                        # Point of Sale Setup
                        try:
                            outlet_code = (
                                mem_var_1f92228[2:]
                                if len(mem_var_1f92228) > 2
                                else "DEFAULT"
                            )
                            result = proc_165_0_14cc_ec0(
                                arg_C="Point of Sale Setup",
                                arg_10=0x0E,  # &HE = 14
                                arg_14=3,  # flag type
                                arg_18="",
                                arg_1C="",
                                arg_20="",
                                arg_24="",
                                arg_28=0,
                                arg_2C=outlet_code,
                                connection=connection,
                            )
                        except Exception as e:
                            log_error(
                                e, context="proc_165_1_1ef78bc Point of Sale Setup"
                            )

                    # Check for "Q" at position 2 (Indoor Catering / Banquet)
                    if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1] == "Q":
                        # Indoor Catering
                        try:
                            outlet_code = (
                                mem_var_1f92228[2:]
                                if len(mem_var_1f92228) > 2
                                else "DEFAULT"
                            )
                            result = proc_165_0_14cc_ec0(
                                arg_C="Indoor Catering",
                                arg_10=0x14,  # &H14 = 20
                                arg_14=3,  # flag type
                                arg_18="",
                                arg_1C="",
                                arg_20="",
                                arg_24="",
                                arg_28=0,
                                arg_2C=outlet_code,
                                connection=connection,
                            )
                        except Exception as e:
                            log_error(e, context="proc_165_1_1ef78bc Indoor Catering")

                    # Check for "G" at position 2 (Members Mgmt Setup)
                    if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1] == "G":
                        # Members Mgmt Setup
                        try:
                            outlet_code = (
                                mem_var_1f92228[2:]
                                if len(mem_var_1f92228) > 2
                                else "DEFAULT"
                            )
                            result = proc_165_0_14cc_ec0(
                                arg_C="Members Mgmt Setup",
                                arg_10=0x19,  # &H19 = 25
                                arg_14=3,  # flag type
                                arg_18="",
                                arg_1C="",
                                arg_20="",
                                arg_24="",
                                arg_28=0,
                                arg_2C=outlet_code,
                                connection=connection,
                            )
                        except Exception as e:
                            log_error(
                                e, context="proc_165_1_1ef78bc Members Mgmt Setup"
                            )

                    # Check for "J" at position 2 (Material Mgmt Setup)
                    if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1] == "J":
                        # Material Mgmt Setup
                        try:
                            outlet_code = (
                                mem_var_1f92228[2:]
                                if len(mem_var_1f92228) > 2
                                else "DEFAULT"
                            )
                            result = proc_165_0_14cc_ec0(
                                arg_C="Material Mgmt Setup",
                                arg_10=0x1A,  # &H1A = 26
                                arg_14=3,  # flag type
                                arg_18="",
                                arg_1C="",
                                arg_20="",
                                arg_24="",
                                arg_28=0,
                                arg_2C=outlet_code,
                                connection=connection,
                            )
                        except Exception as e:
                            log_error(
                                e, context="proc_165_1_1ef78bc Material Mgmt Setup"
                            )

                    # Check for "*" at position 2 (PayRoll Setup)
                    if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1] == "*":
                        # PayRoll Setup
                        try:
                            outlet_code = (
                                mem_var_1f92228[2:]
                                if len(mem_var_1f92228) > 2
                                else "DEFAULT"
                            )
                            result = proc_165_0_14cc_ec0(
                                arg_C="PayRoll Setup",
                                arg_10=0x1B,  # &H1B = 27
                                arg_14=3,  # flag type
                                arg_18="",
                                arg_1C="",
                                arg_20="",
                                arg_24="",
                                arg_28=0,
                                arg_2C=outlet_code,
                                connection=connection,
                            )
                        except Exception as e:
                            log_error(e, context="proc_165_1_1ef78bc PayRoll Setup")

                    # Check for "B" at position 2 (EPABX Setup)
                    if len(mem_var_1f92228) >= 2 and mem_var_1f92228[1] == "B":
                        # EPABX Setup
                        try:
                            outlet_code = (
                                mem_var_1f92228[2:]
                                if len(mem_var_1f92228) > 2
                                else "DEFAULT"
                            )
                            result = proc_165_0_14cc_ec0(
                                arg_C="EPABX Setup",
                                arg_10=0x1C,  # &H1C = 28
                                arg_14=3,  # flag type
                                arg_18="",
                                arg_1C="",
                                arg_20="",
                                arg_24="",
                                arg_28=0,
                                arg_2C=outlet_code,
                                connection=connection,
                            )
                        except Exception as e:
                            log_error(e, context="proc_165_1_1ef78bc EPABX Setup")

                    # After processing, exit the loop
                    break

        # Return 0 on success
        return 0

    except Exception as e:
        # Error handling
        log_error(e, context="Proc_165_1_1EF78BC", form="ModuleAdd")
        # Return error code
        return 0xFF


# ============================================================================
# Main export - all migrated procedures
# ============================================================================

__all__ = [
    "proc_165_0_14cc_ec0",
    "migrate_user_module",
    "migrate_menu_help",
    "proc_165_1_1ef78bc",
]
