unit MainDef;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, Mask, ExtCtrls, Variants,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,BDE,
  dxExEdtr, rvNavigator, ShlObj,Registry,ShellAPI;


const
  ProgramBilgi : string = 'ARI Personel Takip Sistemi v1.0.0';
  ProgramAlias : string = 'ARI';
  ProgVersiyonLabel : string ='v1.0.0';
  ProgramVersiyon : string ='100';
  DatabaseVersiyon : string ='100';
  ServerRoot : string = '\Software\ARI\';
  CRLF = #13 + #10;

//  procedure ComponentArranger(sender : TForm);
  function ComputerName : string;
  function CheckServer : string;
  procedure Send_EMAIL(ToKime,ccKime,Konu,Body,Attachment : string);

implementation

procedure Send_EMAIL(ToKime,ccKime,Konu,Body,Attachment : string);
var
  Komut: string;
begin
  Komut:='mailto:'+ToKime+'?Subject='+Konu+'&cc='+ccKime+'&body='+Body+'&Attach='+AnsiQuotedstr(Attachment,'"');
  ShellExecute(0, nil, PChar(Komut), nil, nil, SW_SHOWDEFAULT);
end;

function ServerAdGir : string;
begin
  Result := InputBox('Server Tan�mlama','ServerAd� : (BilgisayarAd)','localhost');
end;

function CheckServer : string;
var
  Reg : TRegistry;
  ServerName, AliasName : string;
begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      if not Reg.KeyExists(ServerRoot) then
      begin
        ServerName := ServerAdGir;
        (*** Ald���m�z kodu registerye yaz�yoruz***)
        if Reg.CreateKey(ServerRoot) then
        begin
          Reg.OpenKey(ServerRoot,False);
          Reg.WriteString('ServerName',ServerName);
          Reg.WriteString('Alias','ARI');
          Result := ServerName +':' +'ARI';
        end else
        begin
          Showmessage('Server tanimlanamadi manuel degisiklik yapiniz...');
        end;
      end else
      begin
        Reg.OpenKey(ServerRoot,False);
        ServerName := Reg.ReadString('ServerName');
        AliasName := Reg.ReadString('Alias');
        Result := ServerName+':'+AliasName;
      end;
    finally
    Reg.Free;
    end;
  if (ParamStr(1) = '/E') or (ParamStr(1) = 'E') then
    Result := 'ARI';
  if ParamStr(2) <> '' then
    Result := ExtractFilePath(ParamStr(0))+ParamStr(2);
end;

function ComputerName: String;
var
  Len: DWord;
  S: PChar;
begin
   Len := MAX_COMPUTERNAME_LENGTH + 1;
  GetMem(S, Len);
  if GetComputerName(S, Len) then
    Result := S
  else
    raise Exception.Create('Bilgisayar ad�na eri�ilemiyor');
  FreeMem(S, Len);
end;



  (*
procedure ComponentArranger(sender : TForm);
 var I : Integer;
  Temp : TComponent;
begin
  with Sender do
  begin
    for I :=0  to ComponentCount - 1 do
    begin
      Temp := Components[I];
      if (Temp is TTable) then TTable(Components[I]).Close;
      if (Temp is TQuery) then TQuery(Components[I]).Close;
    end;

    for I :=0  to ComponentCount - 1 do
    begin
      Temp := Components[I];

      if (Temp is TrvNavigator) then
      begin
        if Temp.Name <> 'AnaNav' then
        begin
          TrvNavigator(Components[I]).Hints := MainForm.AnaNav.Hints;
          TrvNavigator(Components[I]).ShowHint := True;
        end;
      end else
      if (Temp is TDBNavigator) then
      begin
        TDBNavigator(Components[I]).Hints := MainForm.AnaNav.Hints;
        TDBNavigator(Components[I]).ShowHint := True;
      end else
      if (Temp is TTable) then
      begin
        if TTable(Components[I]).Active then TTable(Components[I]).Active := False;
        TTable(Components[I]).DatabaseName := ProgramAlias;
      end else
      if (Temp is TQuery) then
      begin
        if TQuery(Components[I]).Active then TQuery(Components[I]).Active := False;
        TQuery(Components[I]).DatabaseName := ProgramAlias;
      end else
      if (Temp is TdxDbGrid) then
      begin
        TdxDbGrid(Components[I]).PopUpMenu := MainForm.GridPopupMenu;
      end;
    end;
    for I :=0  to ComponentCount - 1 do
    begin
      Temp := Components[I];
      if (Temp is TTable) then TTable(Components[I]).Open;
      if (Temp is TQuery) then TQuery(Components[I]).Open;
    end;
  end;
end;
*)

end.
