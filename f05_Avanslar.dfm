�
 TF05_AVANSLARFORM 0�  TPF0Tf05_AvanslarFormf05_AvanslarFormLeft� Top� Width�HeightCaptionAvanslar Formu [f05]Color	clBtnFace
ParentFont	
KeyPreview	OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreate	OnKeyDownFormKeyDownPixelsPerInch`
TextHeight TPanelPanel2Left Top'Width�Height�AlignalClient
BevelOuterbvNoneBorderWidthCaptionPanel2Color��� TabOrder  
TScrollBox	ScrollBoxLeftTopWidth�Height�HorzScrollBar.MarginHorzScrollBar.Range,VertScrollBar.MarginVertScrollBar.Range^AlignalClient
AutoScrollTabOrder  TPageControlUyePageControlLeft Top Width~Height�HintUyenin genel bilgileri
ActivePageBilgilerSheetAlignalClientTabOrder TabWidth�  	TTabSheetBilgilerSheetHintUyenin Genel BilgileriCaptionBilgiler TPanelPanel3Left Top WidthvHeight� AlignalTopColor��� TabOrder  TLabelLabel4LeftTop9WidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionAVANS MIKTARFocusControlEditUYESOYAD  TLabelLabel3LeftTop#WidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionTARIH  TLabelLabel2Left+TopWidthFHeight	AlignmenttaRightJustifyCaption
AVANS KODU  TDBTextDBText1LeftzTopWidthkHeight	DataFieldAVANSLAR_EKIPKOD
DataSourceARI_DM.AVANSLAR_DataSourceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel8Left8TopQWidth:Height	AlignmenttaRightJustifyCaption	EKIP KODU  TLabelLabel6LeftTopiWidthSHeight	AlignmenttaRightJustifyCaptionMUSTERI KODU  	TdxDBEditEditUYESOYADLeftxTop6WidthHint"   Üyenin Soyadini bu alana giriniz.TabOrder 	DataFieldAVANSLAR_MIKTAR
DataSourceARI_DM.AVANSLAR_DataSourceStyleControllerARI_DM.dxEditStyleController  TdxDBDateEditdxDBDateEdit1LeftxTopWidth� TabOrder	DataFieldAVANSLAR_TARIH
DataSourceARI_DM.AVANSLAR_DataSourceStyleControllerARI_DM.dxEditStyleController  TdxDBLookupEdit	EkipKodLELeftxTopNWidth	TabOrder	DataFieldAVANSLAR_EKIPKOD
DataSourceARI_DM.AVANSLAR_DataSourceStyleControllerARI_DM.dxEditStyleController
OnDropDownEkipKodLEDropListFieldNameEKIPADKeyFieldNameEKIPKODU
ListSourceARI_DM.EKIPLIST_DataSourceLookupKeyValue   TdxDBLookupEditMusteriKODLELeftxTopfWidth
TabOrder	DataFieldAVANSLAR_MUSTERIKOD
DataSourceARI_DM.AVANSLAR_DataSourceStyleControllerARI_DM.dxEditStyleController
OnDropDownMusteriKODLEDropListFieldName
MUSTERI_ADKeyFieldNameMUSTERI_KOD
ListSourceARI_DM.MUSTERILIST_DataSourceLookupKeyValue   TdxDBCheckEditdxDBCheckEdit1Left�TopWidthyTabOrderCaption
ODENDI MI?	DataFieldAVANSLAR_ODENDIMI
DataSourceARI_DM.AVANSLAR_DataSourceValueCheckedYValueUncheckedN  	TdxDBMemo	dxDBMemo1Left�Top$Width� Hint=Avans odemesi ile ilgili aciklamalarin tanimlanacagi alandir.TabOrder	DataFieldAVANSLAR_ACIKLAMA
DataSourceARI_DM.AVANSLAR_DataSourceHeightY   	TdxDBGrid	dxDBGrid2Left Top� WidthvHeight$BandsCaptionKod  DefaultLayoutHeaderPanelRowCountKeyFieldAVANSLAR_KODShowGroupPanel	ShowSummaryFooter	SummaryGroupsDefaultGroupSummaryItems
ColumnNamedxDBGrid2AVANSLAR_MIKTARSummaryFieldAVANSLAR_MIKTARSummaryFormat(Toplam=0.00)SummaryTypecstSum  NamedxDBGrid2SummaryGroup1  SummarySeparator, AlignalClient	PopupMenuf01_MainForm.GridPopupMenuTabOrder
DataSourceARI_DM.AVANSLAR_DataSourceFilter.Criteria
       	OptionsDBedgoCancelOnExitedgoCanDeleteedgoCanInsertedgoCanNavigationedgoConfirmDeleteedgoLoadAllRecordsedgoUseBookmarks OptionsViewedgoAutoWidthedgoBandHeaderWidthedgoRowSelectedgoUseBitmap ShowRowFooter	OnBackgroundDrawEventdxDBGrid2BackgroundDrawEvent TdxDBGridMaskColumndxDBGrid2AVANSLAR_KODCaptionKODColorclSilverHeaderAlignmenttaCenterVisibleWidth	BandIndex RowIndex 	FieldNameAVANSLAR_KOD  TdxDBGridDateColumndxDBGrid2AVANSLAR_TARIHCaptionTARIHColor��� HeaderAlignmenttaCenterSortedcsUpWidthQ	BandIndex RowIndex 	FieldNameAVANSLAR_TARIH  TdxDBGridMaskColumndxDBGrid2AVANSLAR_EKIPKODCaptionEKIPKODColorclSilverHeaderAlignmenttaCenterVisibleWidth	BandIndex RowIndex 	FieldNameAVANSLAR_EKIPKOD  TdxDBGridMaskColumndxDBGrid2EKIPADHeaderAlignmenttaCenterWidthl	BandIndex RowIndex 	FieldNameEKIPAD  TdxDBGridMaskColumndxDBGrid2MUSTERININADIHeaderAlignmenttaCenterWidth� 	BandIndex RowIndex 	FieldNameMUSTERININADI  TdxDBGridColumndxDBGrid2AVANSLAR_MIKTARCaptionMIKTARColor��� HeaderAlignmenttaCenterWidth� 	BandIndex RowIndex 	FieldNameAVANSLAR_MIKTARSummaryFooterTypecstSumSummaryTypecstSumSummaryGroupNamedxDBGrid2SummaryGroup1  TdxDBGridMaskColumndxDBGrid2AVANSLAR_MUSTERIKODCaption
MUSTERIKODColorclSilverHeaderAlignmenttaCenterVisibleWidth	BandIndex RowIndex 	FieldNameAVANSLAR_MUSTERIKOD  TdxDBGridCheckColumndxDBGrid2AVANSLAR_ODENDIMICaptionODENDIMIColor��� HeaderAlignmenttaCenterMinWidthWidthw	BandIndex RowIndex 	FieldNameAVANSLAR_ODENDIMIValueCheckedYValueUncheckedN  TdxDBGridMaskColumndxDBGrid2AVANSLAR_ACIKLAMAVisibleWidth� 	BandIndex RowIndex 	FieldNameAVANSLAR_ACIKLAMA       TPanelPanel8Left Top Width�Height'AlignalTopTabOrder TToolBarToolBar1LeftTopWidth�Height%AlignalClientButtonHeightButtonWidthCaptionToolBar1Color�ڶ ImagesARI_DM.ToolbarImageListParentColorTabOrder  TToolButtonToolButton1Left TopHintVeritababanina baglan!!.CaptionToolButton1
ImageIndex ParentShowHintShowHint	OnClickToolButton1Click  TToolButtonToolButton2LeftTopWidthCaptionToolButton2
ImageIndexStyletbsSeparator  TrvNavigatorAnaNavLeft!TopWidthHeight
DataSourceARI_DM.AVANSLAR_DataSourceHints.Strings	Ilk Kayit   Önceki KayitSonraki Kayit	Son KayitYeni Kayit GirisiKayit Silme   Kayit DüzenleKaydi/Degisikligi Kaydet   Vazgeç   Veritabanini Güncelle ParentShowHintConfirmText   Kayıt Sil?ShowHint	TabOrder Glyphsf01_MainForm.AnaNavImgList  TToolButtonToolButton3Left9TopWidthCaptionToolButton3
ImageIndexStyletbsSeparator     