unit f04_secenekler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBTables, Grids, DBGrids, ComCtrls,
  ExtCtrls, jpeg, Buttons, shlobj, rvNavigator, dxExEdtr, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, dxLayout, dxDBTLCl, dxGrClEx;

type
  Tf04_SeceneklerForm = class(TForm)
    PageControl: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TabSheet2: TTabSheet;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    dxDBGrid3: TdxDBGrid;
    BitBtn2: TBitBtn;
    rvNavigator2: TrvNavigator;
    Version: TLabel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid3EKIPKODU: TdxDBGridMaskColumn;
    dxDBGrid3EKIPAD: TdxDBGridMaskColumn;
    Panel3: TPanel;
    rvNavigator1: TrvNavigator;
    Panel8: TPanel;
    rvNavigator4: TrvNavigator;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1PERSONELKOD: TdxDBGridMaskColumn;
    dxDBGrid1PERSONELADSOYAD: TdxDBGridMaskColumn;
    dxDBGrid1PERSONELUNVAN: TdxDBGridMaskColumn;
    dxDBGrid1PERSONELGRUPKODU: TdxDBGridMaskColumn;
    dxDBGrid3MASRAFAD: TdxDBGridMaskColumn;
    dxDBGrid3MASRAFKOD: TdxDBGridMaskColumn;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    dxDBGrid1PERSONELEKIPKODU: TdxDBGridExtLookupColumn;
    dxDBGridLayoutList1Item2: TdxDBGridLayout;
    dxDBGrid3EKIPSBASI: TdxDBGridExtLookupColumn;
    dxDBGrid2PERSONELADSOYAD: TdxDBGridMaskColumn;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    rvNavigator3: TrvNavigator;
    dxDBGrid4: TdxDBGrid;
    dxDBGrid4MUSTERI_AD: TdxDBGridMaskColumn;
    dxDBGrid4MUSTERI_ADRES: TdxDBGridMaskColumn;
    dxDBGrid4MUSTERI_GRUPKODU: TdxDBGridMaskColumn;
    dxDBGrid4MUSTERI_KOD: TdxDBGridMaskColumn;
    dxDBGrid4MUSTERI_VERGIDAIRESI: TdxDBGridMaskColumn;
    dxDBGrid4MUSTERI_VERGINO: TdxDBGridMaskColumn;
    dxDBGrid1EKIPAD: TdxDBGridMaskColumn;
    TabSheet6: TTabSheet;
    Panel5: TPanel;
    rvNavigator5: TrvNavigator;
    dxDBGrid5: TdxDBGrid;
    dxDBGrid5DEGER: TdxDBGridMaskColumn;
    dxDBGrid5TANIMAD: TdxDBGridMaskColumn;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WriteUser(Kullanan :string;Sifresi: string);
  end;

var
  ilk : boolean;
  f04_SeceneklerForm: Tf04_SeceneklerForm;

implementation

uses MainDef, f03_LogonForm,Registry,
  f01_AnaForm, ARI_DataModule;

{$R *.dfm}

procedure Tf04_SeceneklerForm.FormCreate(Sender: TObject);
begin
  Label3.Caption := ProgramBilgi;
  Label4.Caption := Label3.Caption;
  ProductName.Caption := Label3.Caption;
  PageControl.TabIndex := 0;
end;

function BrowseForComputer(const winhandle : THANDLE; const title : string) : string;
//Pop up the standard 'Browse for computer' dialog box
var
  BrowseInfo: TBrowseInfo;
  IDRoot: PItemIDList;
  Path: array[0..MAX_PATH] of Char;
begin
  // Get the Item ID for Network Neighborhood
  SHGetSpecialFolderLocation(winHandle, CSIDL_DESKTOP{NETWORK}, IDRoot);
  ZeroMemory(@BrowseInfo, SizeOf(TBrowseInfo));
  ZeroMemory(@path, MAX_PATH);
  BrowseInfo.hwndOwner := winhandle;
  BrowseInfo.pidlRoot := IDRoot;
  BrowseInfo.lpszTitle := PChar(title);
  BrowseInfo.pszDisplayName := @path;
  // Include this flag to show computer only
//  BrowseInfo.ulFlags := BIF_BROWSEFORCOMPUTER;// or BIF_RETURNONLYFSDIRS ;
  // Show the browse dialog, get the Item ID for the selected item and convert it to a path
  IDRoot := SHBrowseForFolder(BrowseInfo);
  SHGetPathFromIDList(IDRoot, Path);
  result := path;
end;

procedure Tf04_SeceneklerForm.WriteUser(Kullanan :string;Sifresi: string);
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
        Reg.WriteString('Kullanan',Kullanan);
        Reg.WriteString('Sifre',Sifresi);
      end else
      begin
        Showmessage('Kullanici tanimlanamadi manuel degisiklik yapiniz...');
      end;
    end else
    begin
        Reg.OpenKey('\Software\ARI\User',False);
        Reg.WriteString('Kullanan',Kullanan);
        Reg.WriteString('Sifre',Sifresi);
    end;
  finally
  Reg.Free;
  end;
end;


procedure Tf04_SeceneklerForm.BitBtn2Click(Sender: TObject);
var User, Sifre : string;
begin
  f03_fLogonForm.ShowModal;
  if f03_fLogonForm.ModalResult = mrOK  then
  begin
     User := InputBox('Yeni Kullanici Adi Giriniz','Kullanici Ad','');
     if User ='' then ShowMessage('Kullanici adi bos olarak birakildi...');
     Sifre := InputBox('Yeni Sifreyi Giriniz','Sifresi','');
     if Sifre ='' then ShowMessage('Kullanici sifresi bos olarak birakildi...');
     WriteUser(User,Sifre);
  end else ShowMessage('Mevcut kullanici ve sifreyi yanlis girdiniz...');
end;

procedure Tf04_SeceneklerForm.PageControlChange(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  case (PageControl.TabIndex) of
    1: begin dxDBGrid1.DataSource.DataSet.Close; dxDBGrid1.DataSource.DataSet.Open; end;
    2: begin dxDBGrid2.DataSource.DataSet.Close; dxDBGrid2.DataSource.DataSet.Open; end;
    3: begin dxDBGrid3.DataSource.DataSet.Close; dxDBGrid3.DataSource.DataSet.Open; end;
    4: begin dxDBGrid4.DataSource.DataSet.Close; dxDBGrid4.DataSource.DataSet.Open; end;
    5: begin dxDBGrid5.DataSource.DataSet.Close; dxDBGrid5.DataSource.DataSet.Open; end;
  end;
  Screen.Cursor := crDefault;
end;

end.
