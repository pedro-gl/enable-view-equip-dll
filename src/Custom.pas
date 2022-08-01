unit Custom;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls;

type
  TEmpty = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Empty: TEmpty;

implementation

{$R *.dfm}

function readz(prid: integer; Address: integer): dword;
var
  readx: NativeUInt;
  rData: dword;
  hprocessr: thandle;

begin
  // result := 0;

  begin
    hprocessr := OpenProcess(PROCESS_ALL_ACCESS, FALSE, prid);
    ReadProcessMemory(hprocessr, Pointer(Address), @rData, 4, readx);
    CloseHandle(hprocessr);
  end;

  result := rData;

end;

procedure WriteByteszz(Address: Cardinal; const Buffer: array of Byte;
  cbid: integer);
var
  NumberOfBytesWritten: NativeUInt;
  hProcess: thandle;
  // dwProtect: dword;

begin
  hProcess := OpenProcess(PROCESS_ALL_ACCESS, FALSE, cbid);
  if hProcess <> 0 then
  begin
    // if VirtualProtectEx(hprocess, Pointer(Address), length(Buffer), PAGE_READWRITE, dwProtect)=true then
    begin
      WriteProcessMemory(hProcess, Pointer(Address), @Buffer[0], Length(Buffer),
        NumberOfBytesWritten);
      // VirtualProtectEx(hprocess, Pointer(Address), length(Buffer), dwProtect, dwProtect);
    end;

    CloseHandle(hProcess);
  end;
end;

procedure TEmpty.FormCreate(Sender: TObject);
begin
  Left := Screen.Width + 500;
  Top := Screen.Height + 500;
end;

procedure TEmpty.Timer1Timer(Sender: TObject);
begin
  Empty.Hide;
  if readz(getcurrentprocessid, readz(getcurrentprocessid, $00B93530) + $35C) = 0
  then
  begin
    WriteByteszz($005D4277, [0], getcurrentprocessid);
  end;

  if readz(getcurrentprocessid, readz(getcurrentprocessid, $00B93530) + $35C) = 1
  then
  begin
    WriteByteszz($005D4277, [1], getcurrentprocessid);
  end;

  if readz(getcurrentprocessid, readz(getcurrentprocessid, $00B93530) + $35C) = 2
  then
  begin
    WriteByteszz($005D4277, [2], getcurrentprocessid);
  end;

  if readz(getcurrentprocessid, readz(getcurrentprocessid, $00B93530) + $35C) = 3
  then
  begin
    WriteByteszz($005D4277, [3], getcurrentprocessid);
  end;
end;

end.
