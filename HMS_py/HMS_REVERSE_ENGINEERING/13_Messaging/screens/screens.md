# 13_Messaging — Screens

Module hex `16` · builder `&H10` · menu caption `Messaging` · `menu_tree_raw.txt` L472-L474.
Only **2** menu rows exist for this module in the whole menu tree. `[VERIFIED-VB6]`

## 1. Full screen index

| # | Menu caption | group | type | menu line | Opening code | Screen form | Evidence |
|---|---|---|---|---|---|---|---|
| 1 | `InBox` | *(none — root child)* | 0 (screen) | `L473` | `mnuMSG_Click` Index **0** → `global_52 = New Inbox` **L7884**, `.Show` L7889 | `Inbox` | `[VERIFIED-VB6]` |
| 2 | `OutBox` | *(none — root child)* | 0 (screen) | `L474` | `mnuMSG_Click` Index **1** → `global_52 = New Outbox` **L7892**, `.Show` L7897 | `Outbox` | `[VERIFIED-VB6]` |

Counts: 2 menus → 2 screens, **0 reports**, **0 groups other than the header**,
**0 masters**.

## 2. Menu handler — `mnuMSG_Click`

```vb
Private Sub mnuMSG_Click(Index As Integer) 'F25AA4          ' EXTRAS.text L7875
  var_B4 = "mnuMSG" & "+"                                   ' L7880
  If (Index = 0) Then
      global_52 = New Inbox                                 ' L7884
      Call 0.Method_mnuMSG_Click0 (var_D4, var_C6)          ' L7886
      global_52.CAPTION = CVar(var_D4)                      ' L7888
      Call global_52.Show                                   ' L7889
  Else
      If (Index = 1) Then
          global_52 = New Outbox                            ' L7892
          Call global_52.Show                               ' L7897
      End If
  End If
End Sub                                                     ' L7901
```

Two observations `[VERIFIED-VB6]`:

1. Menu array is **0-based** here (`Index = 0` → InBox) while the Members module's
   dispatcher is **1-based** (`arg_C = 0` is handled first but menu captions start at 1) —
   inconsistent array base across modules.
2. The `Else` branch nests a second `If` instead of `ElseIf` — decompiler artefact, real
   behaviour = two-way switch.

## 3. Dispatch style difference

Messaging does **not** use the shared `Set var_90 = New <Form>` caption-dispatcher that
Finance/Members/Mall use (`EXTRAS.text` L480485-L480820 has no Inbox/Outbox arm). It
instantiates its forms **directly inside its own menu click handler**. `[VERIFIED-VB6]`

Consequence: grepping the dispatcher block for Messaging screens returns nothing — this
module must be traced from `mnuMSG_Click` instead.

## 4. Related screens not under hex 16

| Screen | Actually lives in | Why it matters |
|---|---|---|
| Guest message entry/enquiry (`GuestMessage` grid) | Front Office — SQL at **L87877** selects `GM.DocID, GM.VNo, GM.RoomNo, GF.Name, GF.Company, GM.Caller …` | The guest-facing message book is an FO feature, **not** under the Messaging menu `[VERIFIED-VB6]` |
| `SMSModule`, `FrmSmsCenterSettings`, `FrmSMSEnviro`, `FrmSMSMultiType` | module hex `18` (`SMS`) — see `15_Sales_Marketing` | SMS sending is a **separate module** from Messaging `[VERIFIED-VB6]` |

So "Messaging" = internal Inbox/Outbox only; guest messages = FO; SMS = module 18.

## 5. Runtime capture status

| File | Shows | Evidence |
|---|---|---|
| (3 PNGs in `screenshots/13_Messaging/`) | Messaging strip tab / menu | `[VERIFIED-UI]` |

Screens `Inbox` / `Outbox` themselves: **not yet captured** — see `screenshots/README.md`.

## 6. Verification checklist for QA (spec §21)

- [ ] Open Messaging → InBox renders, no crash on empty `GuestMessage`
- [ ] Open Messaging → OutBox renders
- [ ] Confirm neither screen posts anything (no Save enabled without message selection)
- [ ] `Inbox`/`Outbox` close without leaving MDI child windows orphaned
