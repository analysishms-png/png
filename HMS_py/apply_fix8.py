# Bug #8 fix: Enhanced delete validation
with open('ui/partial_forms_ui.py', 'r', encoding='utf-8', errors='replace') as f:
    content = f.read()

# The old _delete method section
old_section = """def _delete(self):
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return"""

# The new enhanced _delete method
new_section = """def _delete(self):
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return
        g = self.grid
        d1, s1 = g.item(r, 0).text(), int(g.item(r, 1).text() or 0)
        d2, s2 = g.item(r, 2).text(), int(g.item(r, 3).text() or 0)
        
        # Enhanced validation: Check pending amount before deletion
        pending = fmo.adj_pending(d1, s1)
        if pending > 0:
            reply = QMessageBox.question(
                self, "Pending Adjustment",
                f"This adjustment has pending amount of {pending:.2f}. "
                "Do you want to proceed with deletion?",
                QMessageBox.Yes | QMessageBox.No
            )
            if reply != QMessageBox.Yes:
                return
        
        # Show confirmation
        if QMessageBox.question(
            self, "Delete Confirmation",
            f"({d1}#{s1} <-> {d2}#{s2})?",
            QMessageBox.Yes | QMessageBox.No
        ) == QMessageBox.StandardButton.Yes:
            try:
                fmo.ledgeradj_delete(d1, s1, d2, s2)
                self._fill()
            except Exception as e:
                _msgbox_err(self, e)"""

if old_section in content:
    content = content.replace(old_section, new_section)
    with open('ui/partial_forms_ui.py', 'w', encoding='utf-8', errors='replace') as f:
        f.write(content)
    print('Bug #8 fix applied: Enhanced delete validation with pending amount check')
else:
    print('Could not find the target section to replace')
    if 'def _delete(self):' in content:
        print('Found def _delete but pattern did not match')
    else:
        print('def _delete not found')