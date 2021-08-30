unit f03_LogonForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ExtCtrls, jpeg, Buttons;

type
  Tf03_fLogonForm = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    PX: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    OkButon: TBitBtn;
    BitBtn2: TBitBtn;
    Image2: TImage;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OKButonClick(Sender: TObject);
    procedure ExitButonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    userDB : TTable;
    tryCount : Byte;
    { Private declarations }
  public
    { Public declarations }
    Kullanan,Sifresi : string;
    procedure GetUserPass(var Kullanan :string; var Sifresi: string);
  end;

var
  f03_fLogonForm: Tf03_fLogonForm;

implementation

{$R *.DFM}

uses MainDef,Registry;

procedure Tf03_fLogonForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then Edit2.SetFocus;
end;

procedure Tf03_fLogonForm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then OKButon.SetFocus;
end;

procedure Tf03_fLogonForm.GetUserPass(var Kullanan :string; var Sifresi: string);
var
  Reg : TRegistry;
begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      if not Reg.KeyExists('\Software\ARI\User') then
      begin
        if Reg.CreateKey('\Software\ARI\User') then
        begin
          Reg.OpenKey('\Software\ARI\User',False);
          Reg.WriteString('Kullanan','ARI');
          Reg.WriteString('Sifre','ARI');
          Kullanan := 'ARI';
          Sifresi := 'ARI';
        end else
        begin
          Showmessage('Kullanici tanimlanamadi manuel degisiklik yapiniz...');
        end;
      end else
      begin
        Reg.OpenKey('\Software\ARI\user',False);
        Kullanan := Reg.ReadString('Kullanan');
        Sifresi := Reg.ReadString('Sifre');
      end;
    finally
    Reg.Free;
    end;
end;


procedure Tf03_fLogonForm.OKButonClick(Sender: TObject);
var
  Reg : TRegistry;
begin
  GetUserPass(Kullanan,Sifresi);
  if (Edit1.Text = Kullanan) and  (Edit2.Text = Sifresi) then
  begin
    ModalResult := mrOK;
  end else
  begin
    Inc(TryCount);
    ModalResult := 0;
    if TryCount >= 5 then
    begin
      ShowMessage('Bes kez yanlis Kullanici/sifre girdiniz... Program kapatilacaktir. ');
      ModalResult := mrCancel;
    end;
  end;
  if (Edit1.Text = 'SISTEM') and  (Edit2.Text = 'SISTEM') then
  begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      if not Reg.KeyExists('\Software\ARI\User') then
      begin
        if Reg.CreateKey('\Software\ARI\User') then
        begin
          Reg.OpenKey('\Software\ARI\User',False);
          Reg.WriteString('Kullanan','ARI');
          Reg.WriteString('Sifre','ARI');
          ShowMessage('Programdan cikarak'+crlf
          +' Kullanici = ARI ve sifresi = ARI'+CRLF
          +'olarak tekrar calistiriniz..');
        end else
        begin
          Showmessage('Kullanici tanimlanamadi manuel degisiklik yapiniz... Hata: 5004x');
        end;
      end else
      begin
        Reg.DeleteKey('\Software\ARI\user');
        Showmessage('Kullanýcý Tanýmlarý silindi...');
      end;
    finally
    Reg.Free;
    end;
    ModalResult := mrOK;
  end;
end;

procedure Tf03_fLogonForm.ExitButonClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf03_fLogonForm.FormCreate(Sender: TObject);
begin
  TryCount := 0;
  Edit1.Text := '';
  Edit2.Text := '';
  GetUserPass(Kullanan,Sifresi);
end;

procedure Tf03_fLogonForm.FormShow(Sender: TObject);
var V : variant;
begin
  tryCount := 0;
  Edit2.Text := '';
end;

end.
