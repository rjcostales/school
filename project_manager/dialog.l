* LEVELS dialog.l
+---main
| +---doInitManagers
| +---eventLoop
| | +---doEvents
| | | +---doActivate
| | | | +---doActivateDocument
| | | | | +---doAdjustMenus
| | | | +---doActivateModeless
| | | | | +---doAdjustMenus
| | | | | +---drawDefaultButtonOutline
| | | +---doKeyDown
| | | | +---doKeyDownDocument
| | | | | +---doAdjustMenus
| | | | | +---doMenuChoice
| | | | | | +---doDemonstrationMenu
| | | | | | | +---doModelessDialog
| | | | | | +---doEditMenu
| | | | | | +---doHideModeless
| | | | +---doKeyDownModeless
| | | | | +---doItemHitModeless
| | | +---doMouseDown
| | | | +---doAdjustMenus
| | | | +---doHideModeless
| | | | +---doInContent
| | | | | +---doItemHitModeless
| | | | +---doMenuChoice
| | | | | +---doDemonstrationMenu
| | | | | | +---doModelessDialog
| | | | | +---doEditMenu
| | | | | +---doHideModeless^
| | | | +---invalidateScrollBarArea
| | | +---doOSEvent
| | | | +---doActivateDocument
| | | | | +---doAdjustMenus
| | | | +---doActivateModeless
| | | | | +---doAdjustMenus
| | | | | +---drawDefaultButtonOutline
| | | +---doUpdate
| | | | +---doUpdateDocument
| | | | +---doUpdateModeless
| | +---doIdle
