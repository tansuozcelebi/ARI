unit f08_MasrafTablo;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, Grids, Mask, ExtCtrls, ComCtrls, TabNotBk,
  Buttons, dxEdLib, dxDBELib, dxCntner,
  dxEditor, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxDBEdtr, cxLookAndFeelPainters, cxButtons, Menus, ExtDlgs, clipbrd,
  ToolWin, ImgList, rvNavigator, IBCustomDataSet, IBQuery;

type
  Tf08_MasrafTabloForm = class(TForm)
    ScrollBox: TScrollBox;
    Panel2: TPanel;
    Tablo: TdxDBGrid;
    Panel1: TPanel;
    UpdateButon: TBitBtn;
    TABLO_DataSource: TDataSource;
    TABLO_IBQuery: TIBQuery;
    TABLO_IBQueryMASRAFAD: TIBStringField;
    TABLO_IBQueryHARCAMALAR_KOD: TIntegerField;
    TABLO_IBQueryHARCAMALAR_TARIH: TDateField;
    TABLO_IBQueryHARCAMALAR_MIKTAR: TFloatField;
    TABLO_IBQueryHARCAMALAR_ACIKLAMA: TIBStringField;
    TABLO_IBQueryMUSTERI_AD: TIBStringField;
    TabloMASRAFAD: TdxDBGridMaskColumn;
    TabloHARCAMALAR_KOD: TdxDBGridMaskColumn;
    TabloHARCAMALAR_TARIH: TdxDBGridDateColumn;
    TabloHARCAMALAR_MIKTAR: TdxDBGridMaskColumn;
    TabloHARCAMALAR_ACIKLAMA: TdxDBGridMaskColumn;
    TabloMUSTERI_AD: TdxDBGridMaskColumn;
    procedure TabloBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure UpdateButonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  f08_MasrafTabloForm: Tf08_MasrafTabloForm;

implementation

{$R *.DFM}

uses f01_AnaForm, ARI_DataModule;


procedure Tf08_MasrafTabloForm.TabloBackgroundDrawEvent(Sender: TObject;
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

procedure Tf08_MasrafTabloForm.UpdateButonClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Application.ProcessMessages;
  Tablo.DataSource.DataSet.Close;
  Tablo.DataSource.DataSet.Open;
  Screen.Cursor := crDefault;
end;

procedure Tf08_MasrafTabloForm.FormCreate(Sender: TObject);
begin
  UpdateButonClick(self);
end;

end.
