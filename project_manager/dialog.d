
* DESCRIPTION dialog.d

global NULL
 used_by	doInitManagers;
 used_by	doModelessDialog;
 used_by	eventLoop;
 used_by	main.

global false
 used_by	doModelessDialog;
 used_by	drawDefaultButtonOutline;
 used_by	eventFilter;
 used_by	eventLoop.

global gDone
 used_by	eventLoop.

global gInBackground
 used_by	doOSEvent.

global gSleepTime
 used_by	eventLoop.

global gWindowPtr
 used_by	doItemHitModeless;
 used_by	main.

global iCharcoal.

subroutine doActivate
 called_by	doEvents;
 calls	doActivateDocument;
 calls	doActivateModeless.

subroutine doActivateDocument
 called_by	doActivate;
 called_by	doOSEvent;
 calls	DrawGrowIcon;
 calls	doAdjustMenus.

subroutine doActivateModeless
 called_by	doActivate;
 called_by	doOSEvent;
 calls	GetCaretTime;
 calls	GetDialogItem;
 calls	HiliteControl;
 calls	SelectDialogItemText;
 calls	doAdjustMenus;
 calls	drawDefaultButtonOutline.

subroutine doAdjustMenus
 called_by	doActivateDocument;
 called_by	doActivateModeless;
 called_by	doKeyDownDocument;
 called_by	doMouseDown;
 calls	DisableItem;
 calls	DrawMenuBar;
 calls	EnableItem;
 calls	FrontWindow;
 calls	GetMenuHandle.

subroutine doDemonstrationMenu
 called_by	doMenuChoice;
 calls	ExitToShell;
 calls	NoteAlert;
 calls	SysBeep;
 calls	doModelessDialog.

subroutine doEditMenu
 called_by	doMenuChoice;
 calls	DialogCopy;
 calls	DialogCut;
 calls	DialogDelete;
 calls	DialogPaste;
 calls	FrontWindow.

subroutine doEvents
 called_by	eventLoop;
 calls	HiliteMenu;
 calls	doActivate;
 calls	doKeyDown;
 calls	doMouseDown;
 calls	doOSEvent;
 calls	doUpdate.

subroutine doHideModeless
 called_by	doMenuChoice;
 called_by	doMouseDown;
 calls	FrontWindow;
 calls	HideWindow;
 calls	InvalRgn.

subroutine doIdle
 called_by	eventLoop;
 calls	DialogSelect;
 calls	FrontWindow.

subroutine doInContent
 called_by	doMouseDown;
 calls	DialogSelect;
 calls	FrontWindow;
 calls	doItemHitModeless.

subroutine doInitManagers
 called_by	main;
 calls	FlushEvents;
 calls	InitCursor;
 calls	InitDialogs;
 calls	InitFonts;
 calls	InitGraf;
 calls	InitMenus;
 calls	InitWindows;
 calls	MaxApplZone;
 calls	MoreMasters;
 calls	TEInit;
 uses	NULL.

subroutine doItemHitModeless
 called_by	doInContent;
 called_by	doKeyDownModeless;
 calls	DrawString;
 calls	GetDialogItem;
 calls	GetDialogItemText;
 calls	GetPort;
 calls	MoveTo;
 calls	PaintRect;
 calls	PenMode;
 calls	PenNormal;
 calls	SetPort;
 calls	SetRect;
 uses	gWindowPtr.

subroutine doKeyDown
 called_by	doEvents;
 calls	FrontWindow;
 calls	doKeyDownDocument;
 calls	doKeyDownModeless.

subroutine doKeyDownDocument
 called_by	doKeyDown;
 calls	MenuKey;
 calls	doAdjustMenus;
 calls	doMenuChoice.

subroutine doKeyDownModeless
 called_by	doKeyDown;
 calls	Delay;
 calls	DialogSelect;
 calls	FrontWindow;
 calls	GetDialogItem;
 calls	HiliteControl;
 calls	doItemHitModeless.

subroutine doMenuChoice
 called_by	doKeyDownDocument;
 called_by	doMouseDown;
 calls	GetMenuHandle;
 calls	GetMenuItemText;
 calls	HiWord;
 calls	HiliteMenu;
 calls	LoWord;
 calls	OpenDeskAcc;
 calls	SysBeep;
 calls	doDemonstrationMenu;
 calls	doEditMenu;
 calls	doHideModeless.

subroutine doModelessDialog
 called_by	doDemonstrationMenu;
 calls	GetDialogItem;
 calls	GetNewDialog;
 calls	SelectDialogItemText;
 calls	SelectWindow;
 calls	SetDialogItem;
 calls	SetWRefCon;
 calls	ShowWindow;
 uses	NULL;
 uses	false.

subroutine doMouseDown
 called_by	doEvents;
 calls	DragWindow;
 calls	FindWindow;
 calls	FrontWindow;
 calls	GrowWindow;
 calls	HiWord;
 calls	LoWord;
 calls	MenuSelect;
 calls	SelectWindow;
 calls	SizeWindow;
 calls	SysBeep;
 calls	SystemClick;
 calls	TrackGoAway;
 calls	doAdjustMenus;
 calls	doHideModeless;
 calls	doInContent;
 calls	doMenuChoice;
 calls	invalidateScrollBarArea.

subroutine doOSEvent
 called_by	doEvents;
 calls	FrontWindow;
 calls	doActivateDocument;
 calls	doActivateModeless;
 uses	gInBackground.

subroutine doUpdate
 called_by	doEvents;
 called_by	eventFilter;
 calls	doUpdateDocument;
 calls	doUpdateModeless.

subroutine doUpdateDocument
 called_by	doUpdate;
 calls	BeginUpdate;
 calls	DrawGrowIcon;
 calls	EmptyRgn;
 calls	EndUpdate;
 calls	EraseRgn;
 calls	FillRect;
 calls	GetIndPattern;
 calls	SetPort.

subroutine doUpdateModeless
 called_by	doUpdate;
 calls	BeginUpdate;
 calls	EndUpdate;
 calls	UpdateDialog.

subroutine drawDefaultButtonOutline
 called_by	doActivateModeless;
 calls	FrameRoundRect;
 calls	GetBackColor;
 calls	GetDialogItem;
 calls	GetForeColor;
 calls	GetGray;
 calls	GetMainDevice;
 calls	GetPenState;
 calls	GetPort;
 calls	InsetRect;
 calls	PenPat;
 calls	PenSize;
 calls	RGBForeColor;
 calls	SetPenState;
 calls	SetPort;
 uses	false.

subroutine eventFilter
 calls	Delay;
 calls	GetDialogItem;
 calls	HiliteControl;
 calls	doUpdate;
 uses	false.

subroutine eventLoop
 called_by	main;
 calls	WaitNextEvent;
 calls	doEvents;
 calls	doIdle;
 uses	NULL;
 uses	false;
 uses	gDone;
 uses	gSleepTime.

subroutine invalidateScrollBarArea
 called_by	doMouseDown;
 calls	InvalRect;
 calls	SetPort.

subroutine main
 calls	AppendResMenu;
 calls	DrawMenuBar;
 calls	ExitToShell;
 calls	GetMenuHandle;
 calls	GetNewMBar;
 calls	GetNewWindow;
 calls	SetMenuBar;
 calls	SetWRefCon;
 calls	doInitManagers;
 calls	eventLoop;
 uses	NULL;
 uses	gWindowPtr.

* UNDECLARED OBJECTS *
* AppendResMenu, BeginUpdate, Delay, DialogCopy, DialogCut, DialogDelete, DialogPaste, DialogSelect, DisableItem, DragWindow, DrawGrowIcon, DrawMenuBar, DrawString, EmptyRgn, EnableItem, EndUpdate, EraseRgn, ExitToShell, FillRect, FindWindow, FlushEvents, FrameRoundRect, FrontWindow, GetBackColor, GetCaretTime, GetDialogItem, GetDialogItemText, GetForeColor, GetGray, GetIndPattern, GetMainDevice, GetMenuHandle, GetMenuItemText, GetNewDialog, GetNewMBar, GetNewWindow, GetPenState, GetPort, GrowWindow, HiWord, HideWindow, HiliteControl, HiliteMenu, InitCursor, InitDialogs, InitFonts, InitGraf, InitMenus, InitWindows, InsetRect, InvalRect, InvalRgn, LoWord, MaxApplZone, MenuKey, MenuSelect, MoreMasters, MoveTo, NoteAlert, OpenDeskAcc, PaintRect, PenMode, PenNormal, PenPat, PenSize, RGBForeColor, SelectDialogItemText, SelectWindow, SetDialogItem, SetMenuBar, SetPenState, SetPort, SetRect, SetWRefCon, ShowWindow, SizeWindow, SysBeep, SystemClick, TEInit, TrackGoAway, UpdateDialog, WaitNextEvent

* UNUSED GLOBALS *
* iCharcoal

* UNUSED SUBROUTINES *
* eventFilter, main

