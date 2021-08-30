unit ARI_DataModule;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, dxCntner, ImgList,
  Forms,Controls,Dialogs, IBQuery,DateUtils;

type
  TARI_DM = class(TDataModule)
    ARI_IBDatabase: TIBDatabase;
    IBTransaction1: TIBTransaction;
    FIS_IBDataSet: TIBDataSet;
    FIS_DataSource: TDataSource;
    ToolbarImageList: TImageList;
    dxEditStyleController: TdxEditStyleController;
    EKIP_IBDataSet: TIBDataSet;
    EKIP_DataSource: TDataSource;
    PERSONEL_IBDataSet: TIBDataSet;
    PERSONEL_DataSource: TDataSource;
    PERSONEL_IBDataSetPERSONELADSOYAD: TIBStringField;
    PERSONEL_IBDataSetPERSONELEKIPKODU: TIntegerField;
    PERSONEL_IBDataSetPERSONELGRUPKODU: TIntegerField;
    PERSONEL_IBDataSetPERSONELKOD: TIntegerField;
    PERSONEL_IBDataSetPERSONELUNVAN: TIBStringField;
    MASRAFLAR_IBDataSet: TIBDataSet;
    MASRAFLAR_DataSource: TDataSource;
    MASRAFLAR_IBDataSetMASRAFAD: TIBStringField;
    MASRAFLAR_IBDataSetMASRAFKOD: TIntegerField;
    EKIP_IBDataSetEKIPAD: TIBStringField;
    EKIP_IBDataSetEKIPKODU: TIntegerField;
    EKIP_IBDataSetEKIPSBASI: TIntegerField;
    EKIP_IBDataSetPERSONELADSOYAD: TIBStringField;
    AVANSLAR_IBDataSet: TIBDataSet;
    AVANSLAR_DataSource: TDataSource;
    AVANSLAR_IBDataSetAVANSLAR_EKIPKOD: TIntegerField;
    AVANSLAR_IBDataSetAVANSLAR_KOD: TIntegerField;
    AVANSLAR_IBDataSetAVANSLAR_MUSTERIKOD: TIntegerField;
    AVANSLAR_IBDataSetAVANSLAR_TARIH: TDateField;
    EKIPLIST_IBQuery: TIBQuery;
    EKIPLIST_DataSource: TDataSource;
    MUSTERI_IBDataSet: TIBDataSet;
    MUSTERI_DataSource: TDataSource;
    MUSTERI_IBDataSetMUSTERI_AD: TIBStringField;
    MUSTERI_IBDataSetMUSTERI_ADRES: TIBStringField;
    MUSTERI_IBDataSetMUSTERI_GRUPKODU: TIntegerField;
    MUSTERI_IBDataSetMUSTERI_KOD: TIntegerField;
    MUSTERI_IBDataSetMUSTERI_VERGIDAIRESI: TIBStringField;
    MUSTERI_IBDataSetMUSTERI_VERGINO: TIBStringField;
    MUSTERILIST_IBQuery: TIBQuery;
    MUSTERILIST_DataSource: TDataSource;
    MUSTERILIST_IBQueryMUSTERI_AD: TIBStringField;
    MUSTERILIST_IBQueryMUSTERI_KOD: TIntegerField;
    EKIPLIST_IBQueryEKIPAD: TIBStringField;
    EKIPLIST_IBQueryEKIPKODU: TIntegerField;
    AVANSLAR_IBDataSetEKIPAD: TIBStringField;
    AVANSLAR_IBDataSetAVANSLAR_MIKTAR: TFloatField;
    AVANSLAR_IBDataSetMUSTERININADI: TIBStringField;
    PERSONEL_IBDataSetEKIPAD: TIBStringField;
    HARCAMALAR_DataSource: TDataSource;
    HARCAMALAR_IBDataSet: TIBDataSet;
    FIS_IBDataSetFIS_KOD: TIntegerField;
    FIS_IBDataSetFIS_MUSTERIKODU: TIntegerField;
    FIS_IBDataSetFIS_SIPARISLER: TIBStringField;
    FIS_IBDataSetFIS_TARIH: TDateField;
    HARCAMALAR_IBDataSetHARCAMALAR_ACIKLAMA: TIBStringField;
    HARCAMALAR_IBDataSetHARCAMALAR_FISKOD: TIntegerField;
    HARCAMALAR_IBDataSetHARCAMALAR_KOD: TIntegerField;
    HARCAMALAR_IBDataSetHARCAMALAR_MASRAFKODU: TIntegerField;
    HARCAMALAR_IBDataSetHARCAMALAR_MIKTAR: TFloatField;
    HARCAMALAR_IBDataSetHARCAMALAR_TARIH: TDateField;
    HARCIRAHLAR_DataSource: TDataSource;
    HARCIRAHLAR_IBDataSet: TIBDataSet;
    HARCIRAHLAR_IBDataSetHARCIRAH_BASLANGICDATE: TDateField;
    HARCIRAHLAR_IBDataSetHARCIRAH_BITISDATE: TDateField;
    HARCIRAHLAR_IBDataSetHARCIRAH_FISKOD: TIntegerField;
    HARCIRAHLAR_IBDataSetHARCIRAH_KOD: TIntegerField;
    HARCIRAHLAR_IBDataSetHARCIRAH_PERSONELKODU: TIntegerField;
    HARCIRAHLAR_IBDataSetPERSONELADSOYAD: TIBStringField;
    HARCIRAHLAR_IBDataSetGUNSAYISI: TIntegerField;
    HARCIRAHLAR_IBDataSetHARCIRAH_GUNLUKBEDEL: TFloatField;
    HARCIRAHLAR_IBDataSetTOPLAM: TFloatField;
    HARCAMALAR_IBDataSetMASRAFAD: TIBStringField;
    AVANSLAR_IBDataSetAVANSLAR_ACIKLAMA: TIBStringField;
    AVANSLAR_IBDataSetAVANSLAR_ODENDIMI: TIBStringField;
    FIS_IBDataSetFIS_EKIPKODU: TIntegerField;
    TANIMLAR_DataSource: TDataSource;
    TANIMLAR_IBDataSet: TIBDataSet;
    TANIMLAR_IBDataSetDEGER: TIBStringField;
    TANIMLAR_IBDataSetTANIMAD: TIBStringField;
    GBEDEL_IBQuery: TIBQuery;
    GBEDEL_DataSource: TDataSource;
    GBEDEL_IBQueryDEGER: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure AfterPost(DataSet: TDataSet);
    procedure BeforeOpen(DataSet: TDataSet);
    procedure AfterOpen(DataSet: TDataSet);
    procedure HARCAMALAR_IBDataSetAfterInsert(DataSet: TDataSet);
    procedure HARCIRAHLAR_IBDataSetAfterInsert(DataSet: TDataSet);
    procedure FIS_IBDataSetAfterInsert(DataSet: TDataSet);
    procedure AVANSLAR_IBDataSetAfterInsert(DataSet: TDataSet);
    procedure FIS_IB_BrowseMU(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function Get_Gunluk_Bedel : string;
  end;

var
  ARI_DM: TARI_DM;

implementation

uses MainDef;

{$R *.dfm}
function TARI_DM.Get_Gunluk_Bedel : string;
begin
  GBEDEL_IBQuery.Close;
  GBEDEL_IBQuery.Open;
  Result := GBEDEL_IBQueryDEGER.AsString;
end;

procedure TARI_DM.DataModuleCreate(Sender: TObject);
begin
  with ARI_IBDatabase do
  begin
    Close;
    DatabaseName := CheckServer;
  end;

  try
    ARI_IBDatabase.Connected := True;
    FIS_IBDataSet.Open;
    EKIP_IBDataSet.Open;
    PERSONEL_IBDataSet.Open;
    MASRAFLAR_IBDataSet.Open;
    MUSTERI_IBDataSet.Open;
    HARCAMALAR_IBDataSet.Open;
    HARCIRAHLAR_IBDataSet.Open;

  except
    ShowMessage('Veritabanina erisim saglanamadi'+#13#10
    +'Kontrol Panelinden Firebird servisinin calistigina emin olunuz'+#13#10
    +'Server kurulumu yapilmamis'
    +' ise /E parametresi ile calistirdiginizdan emin olunuz...');
    Application.Terminate;
  end;

end;

procedure TARI_DM.AfterPost(DataSet: TDataSet);
begin
  Screen.Cursor := crSQLWait;
  Application.ProcessMessages;
  IBTransaction1.CommitRetaining;
  Dataset.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TARI_DM.BeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crSQLWait;
  Application.ProcessMessages;
end;

procedure TARI_DM.AfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
end;

procedure TARI_DM.HARCAMALAR_IBDataSetAfterInsert(DataSet: TDataSet);
begin
  (DataSet as TIBDataset).FieldByName('HARCAMALAR_FISKOD').AsString := FIS_IBDataSetFIS_KOD.AsString;
  (DataSet as TIBDataset).FieldByName('HARCAMALAR_TARIH').AsDateTime := Today;
end;

procedure TARI_DM.HARCIRAHLAR_IBDataSetAfterInsert(DataSet: TDataSet);
begin
  (DataSet as TIBDataset).FieldByName('HARCIRAH_FISKOD').AsString := FIS_IBDataSetFIS_KOD.AsString;
  (DataSet as TIBDataset).FieldByName('HARCIRAH_GUNLUKBEDEL').AsString := Get_Gunluk_Bedel;
end;

procedure TARI_DM.FIS_IBDataSetAfterInsert(DataSet: TDataSet);
begin
  (DataSet as TIBDataset).FieldByName('FIS_TARIH').AsDateTime := Today;
end;

procedure TARI_DM.AVANSLAR_IBDataSetAfterInsert(DataSet: TDataSet);
begin
  (DataSet as TIBDataset).FieldByName('AVANSLAR_TARIH').AsDateTime := Today;
  (DataSet as TIBDataset).FieldByName('AVANSLAR_ODENDIMI').AsString := 'N';
end;

procedure TARI_DM.FIS_IB_BrowseMU(DataSet: TDataSet);
begin
  if (FIS_IBDataSet.State in [dsInsert]) then
  begin
    ShowMessage('Gerceklestirmekte oldugunuz fis kaydini tamamlamalisiniz....');
    Abort;
  end;
end;

end.
