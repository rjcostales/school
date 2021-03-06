
* DESCRIPTION filters.d

global false
 used_by	AboutBox;
 used_by	AboutBoxDlgFltr;
 used_by	Cancel;
 used_by	ChooseDefault;
 used_by	ChooseDefaultDlgFltr;
 used_by	DateTimeOK;
 used_by	DoRequiredSuite;
 used_by	FindOriginal;
 used_by	HandleFileMenu;
 used_by	HandleOpenDoc;
 used_by	InstallAEHandlers;
 used_by	LeapYear;
 used_by	LockFile;
 used_by	PickDateTime;
 used_by	PickDateTimeDlgFltr;
 used_by	PickTabSize;
 used_by	PickTabSizeDlgFltr;
 used_by	PickTypeCreator;
 used_by	PickTypeCreatorDlgFltr;
 used_by	Touch;
 used_by	UnLockFile;
 used_by	pstrcat.

global gAppName
 used_by	AboutBox;
 used_by	GetOurProcessInfo.

global gAppleMenu
 used_by	HandleAppleMenu;
 used_by	SetupMenuBar.

global gCancelReq
 used_by	HandleOpenDoc.

global gConversionType
 used_by	DoProgress;
 used_by	HandleOpenDoc.

global gFileMenu
 used_by	DoProgress.

global true
 used_by	AboutBox;
 used_by	AboutBoxDlgFltr;
 used_by	Cancel;
 used_by	ChooseDefault;
 used_by	ChooseDefaultDlgFltr;
 used_by	DateTimeOK;
 used_by	DoRequiredSuite;
 used_by	FindOriginal;
 used_by	HandleFileMenu;
 used_by	HandleOpenDoc;
 used_by	PickDateTime;
 used_by	PickDateTimeDlgFltr;
 used_by	PickTabSize;
 used_by	PickTabSizeDlgFltr;
 used_by	PickTypeCreator;
 used_by	PickTypeCreatorDlgFltr;
 used_by	pstrcat.

subroutine AboutBox
 called_by	DoRequiredSuite;
 called_by	HandleAppleMenu;
 calls	CenterString;
 calls	DisposeDialog;
 calls	DrawString;
 calls	GetNewDialog;
 calls	GetPort;
 calls	ModalDialog;
 calls	MoveTo;
 calls	NewModalFilterProc;
 calls	SetPort;
 calls	SetWRefCon;
 calls	ShowWindow;
 calls	TextFace;
 calls	TextFont;
 calls	TextSize;
 calls	TickCount;
 uses	false;
 uses	gAppName;
 uses	true.

subroutine AboutBoxDlgFltr
 calls	GetWRefCon;
 calls	TickCount;
 uses	false;
 uses	true.

subroutine Cancel
 called_by	DeleteRF;
 called_by	LockFile;
 called_by	Spaces;
 called_by	Tabs;
 called_by	Touch;
 called_by	TypeCreator;
 called_by	UnLockFile;
 calls	BeginUpdate;
 calls	DragWindow;
 calls	DrawDialog;
 calls	EndUpdate;
 calls	FindWindow;
 calls	GetGrayRgn;
 calls	WaitNextEvent;
 uses	false;
 uses	true.

subroutine CenterString
 called_by	AboutBox;
 calls	StringWidth.

subroutine ChooseDefault
 calls	DisposeDialog;
 calls	GetNewDialog;
 calls	GetPort;
 calls	ModalDialog;
 calls	NewModalFilterProc;
 calls	SetPort;
 calls	ShowWindow;
 uses	false;
 uses	true.

subroutine ChooseDefaultDlgFltr
 uses	false;
 uses	true.

subroutine CodeOK
 called_by	PickTypeCreatorDlgFltr;
 calls	GetDialogItem;
 calls	GetDialogItemText.

subroutine DateTimeOK
 called_by	PickDateTimeDlgFltr;
 calls	DaysInMonth;
 calls	GetDialogItem;
 calls	GetDialogItemText;
 calls	memset;
 calls	sscanf;
 uses	false;
 uses	true.

subroutine DateToString
 called_by	PickDateTime;
 calls	NumToString;
 calls	SecondsToDate;
 calls	pstrcat.

subroutine DaysInMonth
 called_by	DateTimeOK;
 calls	LeapYear.

subroutine DeleteRF
 called_by	HandleOpenDoc;
 calls	Cancel;
 calls	CloseResFile;
 calls	FSpOpenResFile;
 calls	ForceFinderUpdate;
 calls	PBFlushFile;
 calls	PBHGetFInfo;
 calls	PBHSetFInfo;
 calls	SetEOF.

subroutine DoProgress
 called_by	HandleOpenDoc;
 calls	DisposeDialog;
 calls	DrawDialog;
 calls	FillRect;
 calls	GetDialogItem;
 calls	GetMenuItemText;
 calls	GetNewDialog;
 calls	GetPort;
 calls	HideWindow;
 calls	InsetRect;
 calls	NumToString;
 calls	SetDialogItem;
 calls	SetDialogItemText;
 calls	SetPort;
 calls	SetWRefCon;
 calls	SetWTitle;
 calls	ShowWindow;
 uses	gConversionType;
 uses	gFileMenu.

subroutine DoRequiredSuite
 calls	AboutBox;
 calls	HandleOpenDoc;
 uses	false;
 uses	true.

subroutine FindOriginal
 called_by	HandleOpenDoc;
 calls	AECreateAppleEvent;
 calls	AECreateDesc;
 calls	AEDisposeDesc;
 calls	AEPutParamDesc;
 calls	AESend;
 calls	GetNextProcess;
 calls	GetProcessInformation;
 uses	false;
 uses	true.

subroutine ForceFinderUpdate
 called_by	DeleteRF;
 called_by	LockFile;
 called_by	Spaces;
 called_by	Tabs;
 called_by	Touch;
 called_by	TypeCreator;
 called_by	UnLockFile;
 calls	FlushVol;
 calls	GetDateTime;
 calls	PBGetCatInfo;
 calls	PBSetCatInfo.

subroutine FrameBar
 calls	FillRect;
 calls	FrameRect;
 calls	GetDialogItem;
 calls	GetWRefCon.

subroutine GetFSSpecType
 called_by	HandleOpenDoc;
 calls	PBGetCatInfoSync.

subroutine GetFileOSType
 called_by	HandleOpenDoc;
 calls	FSpGetFInfo.

subroutine GetFileSpec
 called_by	HandleFileMenu;
 called_by	HandleOpenDoc;
 calls	CustomGetFile;
 calls	NewDlgHookYDProc.

subroutine GetOurProcessInfo
 called_by	main;
 calls	ExitToShell;
 calls	Gestalt;
 calls	GetCurrentProcess;
 calls	GetProcessInformation;
 calls	LoadFilterPrefs;
 calls	SysBeep;
 uses	gAppName.

subroutine GotRequiredParams
 called_by	HandleOpenDoc;
 calls	AEGetAttributePtr.

subroutine HandleAppleMenu
 called_by	HandleMenuChoice;
 calls	AboutBox;
 calls	GetMenuItemText;
 calls	OpenDeskAcc;
 uses	gAppleMenu.

subroutine HandleEvent
 called_by	main;
 calls	AEProcessAppleEvent;
 calls	HandleKeyDown;
 calls	HandleMouseDown;
 calls	WaitNextEvent.

subroutine HandleFileMenu
 called_by	HandleMenuChoice;
 calls	AECreateAppleEvent;
 calls	AECreateDesc;
 calls	AECreateList;
 calls	AEDisposeDesc;
 calls	AEPutParamDesc;
 calls	AEPutPtr;
 calls	AESend;
 calls	GetFileSpec;
 uses	false;
 uses	true.

subroutine HandleKeyDown
 called_by	HandleEvent;
 calls	HandleMenuChoice;
 calls	MenuKey.

subroutine HandleMenuChoice
 called_by	HandleKeyDown;
 called_by	HandleMouseDown;
 calls	HandleAppleMenu;
 calls	HandleFileMenu;
 calls	HiWord;
 calls	HiliteMenu;
 calls	LoWord.

subroutine HandleMouseDown
 called_by	HandleEvent;
 calls	FindWindow;
 calls	HandleMenuChoice;
 calls	MenuSelect.

subroutine HandleOpenDoc
 called_by	DoRequiredSuite;
 calls	AECountItems;
 calls	AEDisposeDesc;
 calls	AEGetNthPtr;
 calls	AEGetParamDesc;
 calls	Delay;
 calls	DeleteRF;
 calls	DisposeDialog;
 calls	DoProgress;
 calls	DrawPicture;
 calls	FindOriginal;
 calls	GetDialogItem;
 calls	GetFSSpecType;
 calls	GetFileOSType;
 calls	GetFileSpec;
 calls	GetNewDialog;
 calls	GetPicture;
 calls	GetPort;
 calls	GotRequiredParams;
 calls	HiliteControl;
 calls	LMGetTicks;
 calls	LoadFilterPrefs;
 calls	LockFile;
 calls	MaxMem;
 calls	ModalDialog;
 calls	NewModalFilterProc;
 calls	PickDateTime;
 calls	PickTabSize;
 calls	PickTypeCreator;
 calls	SetControlValue;
 calls	SetPort;
 calls	ShowWindow;
 calls	Spaces;
 calls	Tabs;
 calls	Touch;
 calls	TypeCreator;
 calls	UnLockFile;
 uses	false;
 uses	gCancelReq;
 uses	gConversionType;
 uses	true.

subroutine InstallAEHandlers
 called_by	main;
 calls	AEInstallEventHandler;
 calls	NewAEEventHandlerProc;
 uses	false.

subroutine LeapYear
 called_by	DaysInMonth;
 uses	false.

subroutine LoadFilterPrefs
 called_by	GetOurProcessInfo;
 called_by	HandleOpenDoc;
 calls	Get1Resource;
 calls	ReleaseResource.

subroutine LoadTabSizePrefs
 called_by	PickTabSize;
 calls	Get1Resource;
 calls	ReleaseResource.

subroutine LockFile
 called_by	HandleOpenDoc;
 calls	Cancel;
 calls	FSpSetFLock;
 calls	ForceFinderUpdate;
 calls	PBFlushFile;
 calls	PBHGetFInfo;
 uses	false.

subroutine OpenFileSpec
 called_by	Spaces;
 called_by	Tabs;
 calls	BlockMove;
 calls	GetVol;
 calls	HSetVol;
 calls	SetVol;
 calls	fopen.

subroutine PickDateTime
 called_by	HandleOpenDoc;
 calls	DateToSeconds;
 calls	DateToString;
 calls	DisposeDialog;
 calls	GetDialogItem;
 calls	GetDialogItemText;
 calls	GetNewDialog;
 calls	GetPort;
 calls	ModalDialog;
 calls	NewModalFilterProc;
 calls	PBHGetFInfo;
 calls	SelectDialogItemText;
 calls	SetDialogItemText;
 calls	SetPort;
 calls	ShowWindow;
 calls	SysBeep;
 calls	memset;
 calls	sscanf;
 uses	false;
 uses	true.

subroutine PickDateTimeDlgFltr
 calls	DateTimeOK;
 uses	false;
 uses	true.

subroutine PickEntabizeDlgFltr.

subroutine PickTabSize
 called_by	HandleOpenDoc;
 calls	DisposeDialog;
 calls	GetDialogItem;
 calls	GetDialogItemText;
 calls	GetNewDialog;
 calls	GetPort;
 calls	LoadTabSizePrefs;
 calls	ModalDialog;
 calls	NewModalFilterProc;
 calls	SaveTabSizePrefs;
 calls	SetDialogItemText;
 calls	SetPort;
 calls	ShowWindow;
 calls	atoi;
 calls	p2cstr;
 uses	false;
 uses	true.

subroutine PickTabSizeDlgFltr
 uses	false;
 uses	true.

subroutine PickTypeCreator
 called_by	HandleOpenDoc;
 calls	DisposeDialog;
 calls	FSpGetFInfo;
 calls	GetDialogItem;
 calls	GetDialogItemText;
 calls	GetNewDialog;
 calls	GetPort;
 calls	ModalDialog;
 calls	NewModalFilterProc;
 calls	SelectDialogItemText;
 calls	SetDialogItemText;
 calls	SetPort;
 calls	ShowWindow;
 calls	SysBeep;
 uses	false;
 uses	true.

subroutine PickTypeCreatorDlgFltr
 calls	CodeOK;
 uses	false;
 uses	true.

subroutine SaveFilterPrefs
 calls	ChangedResource;
 calls	Get1Resource;
 calls	ReleaseResource;
 calls	WriteResource.

subroutine SaveTabSizePrefs
 called_by	PickTabSize;
 calls	ChangedResource;
 calls	Get1Resource;
 calls	ReleaseResource;
 calls	WriteResource.

subroutine SetButtonName
 calls	GetDialogItem;
 calls	GetPort;
 calls	SetControlTitle;
 calls	SetPort.

subroutine SetupMenuBar
 called_by	main;
 calls	AppendResMenu;
 calls	DrawMenuBar;
 calls	GetMenuHandle;
 calls	GetNewMBar;
 calls	SetMenuBar;
 uses	gAppleMenu.

subroutine Spaces
 called_by	HandleOpenDoc;
 calls	Cancel;
 calls	FSMakeFSSpec;
 calls	FSpDelete;
 calls	FSpExchangeFiles;
 calls	FSpGetFInfo;
 calls	FSpSetFInfo;
 calls	ForceFinderUpdate;
 calls	OpenFileSpec;
 calls	fclose;
 calls	fgets;
 calls	fputc;
 calls	pstrcpy.

subroutine SpecialKeyDown
 calls	GetKeys.

subroutine Tabs
 called_by	HandleOpenDoc;
 calls	Cancel;
 calls	FSMakeFSSpec;
 calls	FSpDelete;
 calls	FSpExchangeFiles;
 calls	FSpGetFInfo;
 calls	FSpSetFInfo;
 calls	ForceFinderUpdate;
 calls	OpenFileSpec;
 calls	fclose;
 calls	fgets;
 calls	fputc;
 calls	pstrcpy.

subroutine Touch
 called_by	HandleOpenDoc;
 calls	Cancel;
 calls	DateToSeconds;
 calls	ForceFinderUpdate;
 calls	GetDateTime;
 calls	PBFlushFile;
 calls	PBHGetFInfo;
 calls	PBHSetFInfo;
 calls	SecondsToDate;
 uses	false.

subroutine TypeCreator
 called_by	HandleOpenDoc;
 calls	Cancel;
 calls	FSpGetFInfo;
 calls	FSpSetFInfo;
 calls	ForceFinderUpdate.

subroutine UnLockFile
 called_by	HandleOpenDoc;
 calls	Cancel;
 calls	FSpRstFLock;
 calls	ForceFinderUpdate;
 calls	PBFlushFile;
 calls	PBHGetFInfo;
 uses	false.

subroutine main
 calls	FlushEvents;
 calls	GetOurProcessInfo;
 calls	HandleEvent;
 calls	InitCursor;
 calls	InitDialogs;
 calls	InitFonts;
 calls	InitGraf;
 calls	InitMenus;
 calls	InitWindows;
 calls	InstallAEHandlers;
 calls	SetCursor;
 calls	SetupMenuBar;
 calls	TEInit.

subroutine pstrcat
 called_by	DateToString;
 calls	BlockMove;
 uses	false;
 uses	true.

subroutine pstrcpy
 called_by	Spaces;
 called_by	Tabs;
 calls	BlockMove.

* UNDECLARED OBJECTS *
* AECountItems, AECreateAppleEvent, AECreateDesc, AECreateList, AEDisposeDesc, AEGetAttributePtr, AEGetNthPtr, AEGetParamDesc, AEInstallEventHandler, AEProcessAppleEvent, AEPutParamDesc, AEPutPtr, AESend, AppendResMenu, BeginUpdate, BlockMove, ChangedResource, CloseResFile, CustomGetFile, DateToSeconds, Delay, DisposeDialog, DragWindow, DrawDialog, DrawMenuBar, DrawPicture, DrawString, EndUpdate, ExitToShell, FSMakeFSSpec, FSpDelete, FSpExchangeFiles, FSpGetFInfo, FSpOpenResFile, FSpRstFLock, FSpSetFInfo, FSpSetFLock, FillRect, FindWindow, FlushEvents, FlushVol, FrameRect, Gestalt, Get1Resource, GetCurrentProcess, GetDateTime, GetDialogItem, GetDialogItemText, GetGrayRgn, GetKeys, GetMenuHandle, GetMenuItemText, GetNewDialog, GetNewMBar, GetNextProcess, GetPicture, GetPort, GetProcessInformation, GetVol, GetWRefCon, HSetVol, HiWord, HideWindow, HiliteControl, HiliteMenu, InitCursor, InitDialogs, InitFonts, InitGraf, InitMenus, InitWindows, InsetRect, LMGetTicks, LoWord, MaxMem, MenuKey, MenuSelect, ModalDialog, MoveTo, NewAEEventHandlerProc, NewDlgHookYDProc, NewModalFilterProc, NumToString, OpenDeskAcc, PBFlushFile, PBGetCatInfo, PBGetCatInfoSync, PBHGetFInfo, PBHSetFInfo, PBSetCatInfo, ReleaseResource, SecondsToDate, SelectDialogItemText, SetControlTitle, SetControlValue, SetCursor, SetDialogItem, SetDialogItemText, SetEOF, SetMenuBar, SetPort, SetVol, SetWRefCon, SetWTitle, ShowWindow, StringWidth, SysBeep, TEInit, TextFace, TextFont, TextSize, TickCount, WaitNextEvent, WriteResource, atoi, fclose, fgets, fopen, fputc, memset, p2cstr, sscanf

* UNUSED SUBROUTINES *
* AboutBoxDlgFltr, ChooseDefault, ChooseDefaultDlgFltr, DoRequiredSuite, FrameBar, PickDateTimeDlgFltr, PickEntabizeDlgFltr, PickTabSizeDlgFltr, PickTypeCreatorDlgFltr, SaveFilterPrefs, SetButtonName, SpecialKeyDown, main

