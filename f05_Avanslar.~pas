unit f05_Avanslar;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, Grids, Mask, ExtCtrls, ComCtrls, TabNotBk,
  Buttons, dxEdLib, dxDBELib, dxCntner, Jpeg, 
  dxEditor, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxDBEdtr, Menus, ExtDlgs, clipbrd,
  ToolWin, ImgList, IBCustomDataSet, IBQuery, DBTables, rvNavigator;

type
  Tf05_AvanslarForm = class(TForm)
    ScrollBox: TScrollBox;
    Panel2: TPanel;
    UyePageControl: TPageControl;
    BilgilerSheet: TTabSheet;
    Panel3: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    EditUYESOYAD: TdxDBEdit;
    Panel8: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    AnaNav: TrvNavigator;
    ToolButton3: TToolButton;
    DBText1: TDBText;
    dxDBDateEdit1: TdxDBDateEdit;
    Label8: TLabel;
    EkipKodLE: TdxDBLookupEdit;
    Label6: TLabel;
    MusteriKODLE: TdxDBLookupEdit;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2AVANSLAR_EKIPKOD: TdxDBGridMaskColumn;
    dxDBGrid2AVANSLAR_KOD: TdxDBGridMaskColumn;
    dxDBGrid2AVANSLAR_MIKTAR: TdxDBGridColumn;
    dxDBGrid2AVANSLAR_MUSTERIKOD: TdxDBGridMaskColumn;
    dxDBGrid2AVANSLAR_TARIH: TdxDBGridDateColumn;
    dxDBGrid2EKIPAD: TdxDBGridMaskColumn;
    dxDBGrid2MUSTERININADI: TdxDBGridMaskColumn;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBGrid2AVANSLAR_ACIKLAMA: TdxDBGridMaskColumn;
    dxDBGrid2AVANSLAR_ODENDIMI: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid2BackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure EkipKodLEDrop(Sender: TObject);
    procedure MusteriKODLEDrop(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  f05_AvanslarForm: Tf05_AvanslarForm;

implementation

{$R *.DFM}

uses f12_InfoDialog, ARI_DataModule;

procedure Tf05_AvanslarForm.FormCreate(Sender: TObject);
begin
  UyePageControl.ActivePage := BilgilerSheet;
  ARI_DM.AVANSLAR_IBDataSet.Close;
  ARI_DM.AVANSLAR_IBDataSet.Open;
  ARI_DM.EKIPLIST_IBQuery.Close;
  ARI_DM.EKIPLIST_IBQuery.Open;
  ARI_DM.MUSTERILIST_IBQuery.Close;
  ARI_DM.MUSTERILIST_IBQuery.Open;
end;

procedure Tf05_AvanslarForm.ToolButton1Click(Sender: TObject);
begin
  ARI_DM.AVANSLAR_IBDataSet.Close;
  ARI_DM.AVANSLAR_IBDataSet.Open;
  ARI_DM.EKIPLIST_IBQuery.Close;
  ARI_DM.EKIPLIST_IBQuery.Open;
  ARI_DM.MUSTERILIST_IBQuery.Close;
  ARI_DM.MUSTERILIST_IBQuery.Open;
end;

procedure Tf05_AvanslarForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not ((ActiveControl is TdxDBDateEdit)
       or (ActiveControl is TdxDBPickEdit)
       or (ActiveControl is TdxDBPopupEdit)
       or (ActiveControl is TdxDBLookupEdit)) then
  begin
    case key of
    VK_UP :  begin Perform(Wm_NextDlgCtl,1,0); Key := 0 ; end;
    VK_DOWN : begin Perform(Wm_NextDlgCtl,0,0); Key := 0 ; end;
    VK_RETURN :
      if not (ActiveControl is TdxDBMemo) then
      begin
        Perform(Wm_NextDlgCtl,0,0);
        Key := 0;
      end;
    end;
  end else
  if not (TdxDBDateEdit(ActiveControl).DroppedDown
       and TdxDBPickEdit(ActiveControl).DroppedDown
       and TdxDBPopupEdit(ActiveControl).DroppedDown
       and TdxDBLookupEdit(ActiveControl).DroppedDown) then
  begin
    case key of
    VK_UP :  begin Perform(Wm_NextDlgCtl,1,0); Key := 0 ; end;
    VK_DOWN : begin Perform(Wm_NextDlgCtl,0,0); Key := 0 ; end;
    VK_RETURN :
      if not (ActiveControl is TdxDBMemo) then
      begin
        Perform(Wm_NextDlgCtl,0,0);
        Key := 0;
      end;
    end;
  end;
end;

procedure Tf05_AvanslarForm.dxDBGrid2BackgroundDrawEvent(Sender: TObject;
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

procedure Tf05_AvanslarForm.EkipKodLEDrop(Sender: TObject);
begin
  ARI_DM.EKIPLIST_IBQuery.Close;
  ARI_DM.EKIPLIST_IBQuery.Open;
end;

procedure Tf05_AvanslarForm.MusteriKODLEDrop(Sender: TObject);
begin
  ARI_DM.MUSTERILIST_IBQuery.Close;
  ARI_DM.MUSTERILIST_IBQuery.Open;
end;

end.
