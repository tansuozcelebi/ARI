unit f01_AnaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Menus, ImgList, StdCtrls, DBCtrls,
  rvNavigator, ToolWin, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  FR_Class,ShellAPI, dxDBEdtr, dxDBELib, dxEditor, dxEdLib, dxDBTLCl,
  dxGrClms, dxGrClEx, dxLayout, DB, IBCustomDataSet, IBQuery, Buttons;

type
  Tf01_MainForm = class(TForm)
    Panel1: TPanel;
    GridSaveDialog: TSaveDialog;
    GridPopupMenu: TPopupMenu;
    SaveGridToXLS1: TMenuItem;
    mTabloyuHtmlKaydet1: TMenuItem;
    mTabloyuXMLXMLkaydet1: TMenuItem;
    SeilikaytlarExcelXLSkaydet1: TMenuItem;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    StatusBar: TStatusBar;
    Timer1: TTimer;
    AnaNavImgList: TImageList;
    MainMenu1: TMainMenu;
    H_ARI: TMenuItem;
    MI_Tanimlamalar: TMenuItem;
    MI_Avans: TMenuItem;
    N1: TMenuItem;
    Programdank1: TMenuItem;
    Yardm1: TMenuItem;
    Yardm2: TMenuItem;
    Hakknda1: TMenuItem;
    frReport: TfrReport;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    AnaNav: TrvNavigator;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    EditUYESOYAD: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    EkipKodLE: TdxDBLookupEdit;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    HARCAMA_DBGrid: TdxDBGrid;
    HARCAMA_DBGridHARCAMALAR_KOD: TdxDBGridMaskColumn;
    HARCAMA_DBGridHARCAMALAR_FISKOD: TdxDBGridMaskColumn;
    HARCAMA_DBGridHARCAMALAR_MIKTAR: TdxDBGridMaskColumn;
    HARCAMA_DBGridHARCAMALAR_TARIH: TdxDBGridDateColumn;
    HARCAMA_DBGridHARCAMALAR_ACIKLAMA: TdxDBGridMaskColumn;
    ToolBar2: TToolBar;
    rvNavigator1: TrvNavigator;
    Panel5: TPanel;
    Panel6: TPanel;
    ToolBar3: TToolBar;
    rvNavigator2: TrvNavigator;
    HARCIRAH_DBGrid: TdxDBGrid;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item_MASRAFKODU: TdxDBGridLayout;
    HARCAMA_DBGridHARCAMALAR_MASRAFKODU: TdxDBGridExtLookupColumn;
    HARCIRAH_DBGridHARCIRAH_BASLANGICDATE: TdxDBGridDateColumn;
    HARCIRAH_DBGridHARCIRAH_BITISDATE: TdxDBGridDateColumn;
    HARCIRAH_DBGridHARCIRAH_FISKOD: TdxDBGridMaskColumn;
    HARCIRAH_DBGridHARCIRAH_GUNLUKBEDEL: TdxDBGridColumn;
    HARCIRAH_DBGridHARCIRAH_KOD: TdxDBGridMaskColumn;
    dxDBGridLayoutList1Item_PERSONEL: TdxDBGridLayout;
    HARCIRAH_DBGridHARCIRAH_PERSONELKODU: TdxDBGridExtLookupColumn;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    EKIPADD_IBQuery: TIBQuery;
    EKIPADD_IBQueryPERSONELKOD: TIntegerField;
    EKIPADD_IBQueryPERSONELADSOYAD: TIBStringField;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    HARCIRAH_DBGridPERSONELADSOYAD: TdxDBGridMaskColumn;
    HARCIRAH_DBGridGUNSAYISI: TdxDBGridMaskColumn;
    HARCIRAH_DBGridTOPLAM: TdxDBGridColumn;
    HARCAMA_DBGridMASRAFAD: TdxDBGridMaskColumn;
    Panel7: TPanel;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    Panel8: TPanel;
    FisButton: TBitBtn;
    H_Raporlar: TMenuItem;
    N2: TMenuItem;
    MI_MasraflarTablosu: TMenuItem;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    Label1: TLabel;
    EkipKod_LE: TdxDBLookupEdit;
    MI_DinamikRaporlar: TMenuItem;
    ToolButton16: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridPopUpClick(Sender: TObject);
    procedure GridSave(Sender:TObject; DefExtStr : string);
    procedure CollapseAll1Click(Sender: TObject);
    procedure ExpandAll1Click(Sender: TObject);
    procedure MI_TanimlamalarClick(Sender: TObject);
    procedure MI_AvansClick(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure FisButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Programdank1Click(Sender: TObject);
    procedure MI_MasraflarTablosuClick(Sender: TObject);
    procedure EkipKod_LEDropDown(Sender: TObject);
    procedure MI_DinamikRaporlarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    WPath: String;
    procedure MyIdleHandler(Sender: TObject; var Done: Boolean);
    procedure DisplayHint(Sender: TObject);
    procedure dxDBGridBackgroundDrawEvent(Sender: TObject;  ACanvas: TCanvas; ARect: TRect);
    procedure AddEkipToListe (EkipKodP : string; BAS,BIT : TDateTime; Gunluk : string);
  end;

var
  f01_MainForm: Tf01_MainForm;

implementation

uses MainDef, ARI_DataModule, f04_secenekler, f12_InfoDialog, f05_Avanslar,
  f07_EkipSec, f08_MasrafTablo, f06_DinamikRaporlar;

{$R *.dfm}

procedure Tf01_MainForm.DisplayHint(Sender: TObject);
begin
  StatusBar.Panels[1].Text := GetLongHint(Application.Hint);
end;

procedure Tf01_MainForm.MyIdleHandler(Sender: TObject; var Done: Boolean);
begin
//  KomutState := Pasif;
end;

procedure Tf01_MainForm.FormCreate(Sender: TObject);
begin
  Application.OnHint := DisplayHint;
  Application.OnIdle:= MyIdleHandler;
  Caption := ProgramBilgi;
  if FileExists('FR_tur_tanz.dll') then
    frLocale.LoadDll('FR_tur_tanz.dll')
    else ShowMessage('EKSIK DLL UYARISI = Yazilimin rapor Turkce destegini kullanamiyorsunuz (h1098)');

end;

procedure Tf01_MainForm.Timer1Timer(Sender: TObject);
begin
  if StatusBar <> nil then
  if StatusBar.Visible then
    StatusBar.Panels[0].Text := DateTimeToStr(Now);
end;

procedure Tf01_MainForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Application.MessageBox('Programdan çýkmak istiyormusunuz?',
    'Programdan CIKIS',mb_OKCancel) = idOK then
    begin

    end else Action := caNone;

end;


procedure Tf01_MainForm.ExpandAll1Click(Sender: TObject);
begin
  with GridPopupMenu do
  begin
    if (PopUpComponent is TdxDBGrid) then
    begin
      TDxDBGrid(PopUpComponent).FullExpand;
    end;
  end;
end;

procedure Tf01_MainForm.CollapseAll1Click(Sender: TObject);
begin
  with GridPopupMenu do
  begin
    if (PopUpComponent is TdxDBGrid) then
    begin
      TDxDBGrid(PopUpComponent).FullCollapse;
    end;
  end;
end;

procedure Tf01_MainForm.GridSave(Sender:TObject; DefExtStr : string);
begin
  with GridPopupMenu do
  begin
    if (PopUpComponent is TdxDBGrid) then
    begin
      GridSaveDialog.DefaultExt := DefExtStr;
      if DefExtStr = 'XLS' then GridSaveDialog.FilterIndex := 2 else
      if DefExtStr = 'HTM' then GridSaveDialog.FilterIndex := 3 else
      if DefExtStr = 'XML' then GridSaveDialog.FilterIndex := 4 else
         GridSaveDialog.FilterIndex := 1;
      end;
      if GridSaveDialog.Execute then
      begin
      if DefExtStr = 'XLS' then
      begin
        TdxDBGrid(PopUpComponent).SaveToXLS(GridSaveDialog.FileName,true);
        ShellExecute(Handle, 'open', PChar('excel'), PChar('"'+GridSaveDialog.FileName+'"'), nil, SW_SHOW);
      end else
      if DefExtStr = 'HTM' then
      begin
        TdxDBGrid(PopUpComponent).SaveToHTML(GridSaveDialog.FileName,true);
        ShellExecute(Handle, 'open', PChar('iexplore'), PChar(GridSaveDialog.FileName), nil, SW_SHOW);
      end else
      if DefExtStr = 'XML' then
      begin
        TdxDBGrid(PopUpComponent).SaveToXML(GridSaveDialog.FileName,true);
        ShellExecute(Handle, 'open', PChar('iexplore'), PChar(GridSaveDialog.FileName), nil, SW_SHOW);
      end else ShowMessage('Kayýt hatasý Hata Kodu=12234K');

   //   ShowMessage(Format('Seçilen Tablo %s dosyasýna kayýt edildi',[GridSaveDialog.FileName]));
    end;
  end;
end;

procedure Tf01_MainForm.GridPopUpClick(Sender: TObject);
begin
  case (Sender as TMenuItem).Tag of
  1: GridSave(Sender, 'XLS');
  2: GridSave(Sender, 'HTM');
  3: GridSave(Sender, 'XML');
  end;
end;

procedure Tf01_MainForm.dxDBGridBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  Text : String;
begin
   with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);
    if (Sender as TdxDBGrid).GroupColumnCount = 0 then
    begin
      Font.Color := clBtnFace;
      Text := 'Gruplandýrmak istediðiniz kolonu buraya sürükleyiniz.'{sdxPanelText};
      TextOut(ARect.Left+5, ARect.Top+5, Text);
    end;
  end;
end;

procedure Tf01_MainForm.MI_TanimlamalarClick(Sender: TObject);
begin
  InformationDialog.Show;
  if f04_SeceneklerForm = nil then f04_SeceneklerForm := Tf04_SeceneklerForm.Create(self);
  f04_SeceneklerForm.Show;
  InformationDialog.Hide;
end;

procedure Tf01_MainForm.MI_AvansClick(Sender: TObject);
begin
  InformationDialog.Show;
  if f05_AvanslarForm = nil then f05_AvanslarForm := Tf05_AvanslarForm.Create(self);
  f05_AvanslarForm.Show;
  InformationDialog.Hide;
end;

procedure Tf01_MainForm.AddEkipToListe (EkipKodP : string; BAS,BIT : TDateTime; Gunluk : string);
var I : Integer;
begin
  if ARI_DM.HARCIRAHLAR_IBDataSet.State in [dsBrowse] then
  begin
    EKIPADD_IBQuery.Close;
    EKIPADD_IBQuery.ParamByName('KOD').AsString := EkipKodP;
    EKIPADD_IBQuery.Open;
    EKIPADD_IBQuery.First;
    while not EKIPADD_IBQuery.Eof do
    begin
      Application.ProcessMessages;
      ARI_DM.HARCIRAHLAR_IBDataSet.Insert;
      ARI_DM.HARCIRAHLAR_IBDataSetHARCIRAH_BASLANGICDATE.AsDateTime := BAS;
      ARI_DM.HARCIRAHLAR_IBDataSetHARCIRAH_BITISDATE.AsDateTime := BIT;
      ARI_DM.HARCIRAHLAR_IBDataSetHARCIRAH_GUNLUKBEDEL.AsString := Gunluk;
      ARI_DM.HARCIRAHLAR_IBDataSetHARCIRAH_PERSONELKODU.AsInteger := EKIPADD_IBQueryPERSONELKOD.AsInteger;
      ARI_DM.HARCIRAHLAR_IBDataSet.Post;
      EKIPADD_IBQuery.Next;
    end;
  end else ShowMessage('Gerceklestirmekte olduðunuz yeni kayit/ duzeltme islemini tamamlayiniz');

end;

procedure Tf01_MainForm.ToolButton7Click(Sender: TObject);
begin
  if not (ARI_DM.FIS_IBDataSet.State in [dsInsert]) then
  begin
    if f07_EkipSecForm= nil then f07_EkipSecForm.Create(self);
    f07_EkipSecForm.ShowModal;
    InformationDialog.Show;
    AddEkipToListe(f07_EkipSecForm.SecilenEkip,
      f07_EkipSecForm.BASLA,
      f07_EkipSecForm.BITIS,
      f07_EkipSecForm.GunlukBedel);
    InformationDialog.Hide;
  end else ShowMessage('Oncelikle Fis kaydini tamamlayiniz...');
end;

procedure Tf01_MainForm.FisButtonClick(Sender: TObject);
var RapName : string;
begin
  RapName := '001_FIS_RAPORU.frf';
  with frReport do
  begin
    if LoadFromFile(WPath + RapName) then
    begin
      Dictionary.Variables['FISNO'] := ARI_DM.FIS_IBDataSetFIS_KOD.AsString;
      ShowReport;
    end
    else ShowMessage(RapName + ' adlý rapor dosyasý bulunamadi...');
  end;
end;

procedure Tf01_MainForm.FormShow(Sender: TObject);
begin
  WPath := ExtractFilePath(ParamStr(0));
end;

procedure Tf01_MainForm.Programdank1Click(Sender: TObject);
begin
  Close;
end;

procedure Tf01_MainForm.MI_MasraflarTablosuClick(Sender: TObject);
begin
  InformationDialog.Show;
  if f08_MasrafTabloForm = nil then f08_MasrafTabloForm.Create(self);
  f08_MasrafTabloForm.Show;
  InformationDialog.Hide;
end;

procedure Tf01_MainForm.EkipKod_LEDropDown(Sender: TObject);
begin
  ARI_DM.EKIPLIST_IBQuery.Close;
  ARI_DM.EKIPLIST_IBQuery.Open;
end;

procedure Tf01_MainForm.MI_DinamikRaporlarClick(Sender: TObject);
begin
  if f06_DinamikRaporlarForm = nil then f06_DinamikRaporlarForm := Tf06_DinamikRaporlarForm.Create(self);
  f06_DinamikRaporlarForm.Show;
end;

end.
