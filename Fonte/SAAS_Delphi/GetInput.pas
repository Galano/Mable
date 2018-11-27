unit GetInput;

uses
Messages, Windows;

{$R *.RES}


const
mapName: PChar = 'k9i:f$d8aR1';
KeyMsg: Integer = WM_USER+1627;
MseMsg: Integer = WM_USER+1628;

var
hKeyHook, hMseHook, hMemFile: THandle;
Hooked: Boolean = False;
pFHandle: PHandle = nil;


procedure CloseMap;
begin
if pFHandle = nil then Exit;
UnmapViewOfFile(pFHandle);
CloseHandle(hMemFile);
pFHandle := nil;
end;


function KeyHookFunc(Code, VirtualKey, KeyStroke: Integer): LRESULT; stdcall;
var
KeyState1: TKeyBoardState;
AryChar: Array[0..1] of Char;
Count: Integer;
begin
// I had trouble with NON-syncronus key values in separate thread message queues
// so I used the GetKeyboardState function
Result := 0;
if Code = HC_NOREMOVE then Exit;
Result := CallNextHookEx(0, Code, VirtualKey, KeyStroke);
if (Code < 0) or (Code <> HC_ACTION) or IsBadCodePtr(pFHandle) then Exit;

if ((KeyStroke and (1 shl 30)) <> 0) then
begin
GetKeyboardState(KeyState1);
Count := ToAscii(VirtualKey,KeyStroke, KeyState1, AryChar, 0);
if Count = 1 then
PostMessage(pFHandle^, KeyMsg, Ord(AryChar[0]), KeyStroke);
end;
end;



function MseHookFunc(Code, mMsg: Integer; var MouseRec: TMOUSEHOOKSTRUCT): Integer; stdcall;
var
Pos: Integer;
reVal: SmallInt;
begin
// to get the message information into 2 Integer values (wParam, lParam), I use the HiWord and LoWord
Result := 0;
if Code = HC_NOREMOVE then Exit;
Result := CallNextHookEx(0, Code, mMsg, Integer(@MouseRec));
if (Code < 0) or (Code <> HC_ACTION) or IsBadCodePtr(pFHandle) then Exit;

reVal := MouseRec.pt.x;
Pos := Word(reVal);
reVal := MouseRec.pt.y;
Pos := Pos or (Word(reVal) shl 16); // 2 SmallInt values in the LParam
mMsg := mMsg or (Integer(MouseRec.dwExtraInfo) shl 16);// 2 Word values in the WParam
PostMessage(pFHandle^, MseMsg, mMsg, Pos);
end;



// you must include the Forms window Handle in the StartHook
// StartHook is succesfull if it returns Zero
function StartHook(FormHandle: THandle): Integer; export;
begin
Result := 1;
if Hooked then Exit;

if not IsWindow(FormHandle) then
begin
Result := 2;
Exit;
end;

hMemFile := CreateFileMapping($FFFFFFFF, // $FFFFFFFF gets a page memory file
nil, // no security attributes
PAGE_READWRITE, // read/write access
0, // size: high 32-bits
SizeOf(THandle), // size: low 32-bits
mapName); // name of map object
pFHandle := MapViewOfFile(hMemFile, FILE_MAP_WRITE, 0, 0, 0);
if pFHandle = nil then
begin
CloseHandle(hMemFile);
Result := 3;
Exit;
end;

hKeyHook := SetWindowsHookEx(WH_KEYBOARD, @KeyHookFunc, hInstance, 0);
if hKeyHook = 0 then
begin
CloseMap;
Result := 4;
Exit;
end;

hMseHook := SetWindowsHookEx(WH_MOUSE, @MseHookFunc, hInstance, 0);
if hMseHook = 0 then
begin
CloseMap;
UnhookWindowsHookEx(hKeyHook);
Result := 5;
Exit;
end;

Hooked := True;
pFHandle^ := FormHandle;
Result := 0;
end;


function StopHook: Boolean; export; // success if true
begin
if Hooked then
begin
Result := UnhookWindowsHookEx(hKeyHook) and UnhookWindowsHookEx(hMseHook);
end else
Result := True;

if Result then
begin
CloseMap;
hKeyHook := 0;
hMseHook := 0;
Hooked := False;
end;
end;



procedure EntryProc(Reason: Cardinal);
begin
if (Reason = Dll_Process_Detach) then
begin
CloseMap;
if Hooked then
begin
UnhookWindowsHookEx(hMseHook);
UnhookWindowsHookEx(hKeyHook);
end;
end;
end;

exports
StartHook, StopHook;


begin
DLLProc := @EntryProc;
hMemFile := OpenFileMapping(FILE_MAP_WRITE, False, mapName);
if hMemFile <> 0 then
pFHandle := MapViewOfFile(hMemFile, FILE_MAP_WRITE, 0, 0, 0);

end.

