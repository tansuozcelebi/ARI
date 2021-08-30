unit f07_EkipSec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, Buttons,DateUtils;

type
  Tf07_EkipSecForm = class(TForm)
    Sonuc_Grid: TdxDBGrid;
    Sonuc_GridEKIPAD: TdxDBGridMaskColumn;
    Sonuc_GridEKIPKODU: TdxDBGridMaskColumn;
    Panel2: TPanel;
    BASLA_DateEdit: TdxDateEdit;
    Label1: TLabel;
    BITIS_DateEdit: TdxDateEdit;
    Label2: TLabel;
    GunlukEdit: TdxMaskEdit;
    Label3: TLabel;
    OKButton: TBitBtn;
    CancelButton: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Sonuc_GridClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SecilenEkip : string;
    BASLA,BITIS : TDateTime;
    GunlukBedel : string;
    function Get_Gunluk_Bedel : string;
  end;

var
  f07_EkipSecForm: Tf07_EkipSecForm;

implementation

uses ARI_DataModule;

{$R *.dfm}

procedure Tf07_EkipSecForm.FormShow(Sender: TObject);
begin
  ARI_DM.EKIPLIST_IBQuery.Close;
  ARI_DM.EKIPLIST_IBQuery.Open;
  GunlukEdit.Text := Get_Gunluk_Bedel;
end;

procedure Tf07_EkipSecForm.Sonuc_GridClick(Sender: TObject);
begin
  OKButton.Enabled := Sonuc_Grid.SelectedCount <> -1;
  OKButton.Enabled := Sonuc_Grid.DataSource.Dataset.RecordCount > 0;
end;

function Tf07_EkipSecForm.Get_Gunluk_Bedel : string;
begin
  ARI_DM.GBEDEL_IBQuery.Close;
  ARI_DM.GBEDEL_IBQuery.Open;
  Result := ARI_DM.GBEDEL_IBQueryDEGER.AsString;
end;

procedure Tf07_EkipSecForm.FormCreate(Sender: TObject);
begin
  BASLA_DateEdit.Date := IncDay(Today,-7);
  BITIS_DateEdit.Date := Today;
  GunlukEdit.Text := Get_Gunluk_Bedel;
end;

procedure Tf07_EkipSecForm.OKButtonClick(Sender: TObject);
begin
  SecilenEkip := ARI_DM.EKIPLIST_IBQueryEKIPKODU.AsString;
  BASLA := BASLA_DateEdit.Date;
  BITIS := BITIS_DateEdit.Date;
  GunlukBedel := GunlukEdit.Text;
end;

end.
