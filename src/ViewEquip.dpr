library ViewEquip;

uses
  System.SysUtils,
  System.Classes,
  Windows,
  Custom in 'Custom.pas';

{$R *.res}

var
  thID: DWORD;

procedure sync;
begin
  empty := tempty.Create(nil);
  empty.ShowModal;
end;

begin
  CreateThread(nil, thID, @sync, nil, thID, thID);

end.
