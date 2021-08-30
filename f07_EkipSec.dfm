object f07_EkipSecForm: Tf07_EkipSecForm
  Left = 360
  Top = 212
  Width = 302
  Height = 445
  Caption = 'Ekip Secim Formu [f07]'
  Color = 14810077
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Sonuc_Grid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 294
    Height = 287
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'EKIPKODU'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    OnClick = Sonuc_GridClick
    DataSource = ARI_DM.EKIPLIST_DataSource
    Filter.Criteria = {00000000}
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object Sonuc_GridEKIPKODU: TdxDBGridMaskColumn
      Color = 14024703
      HeaderAlignment = taCenter
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EKIPKODU'
    end
    object Sonuc_GridEKIPAD: TdxDBGridMaskColumn
      Color = 14548957
      HeaderAlignment = taCenter
      Width = 189
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EKIPAD'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 287
    Width = 294
    Height = 124
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 22
      Top = 16
      Width = 99
      Height = 13
      Caption = 'BASLANGIC TARIHI'
    end
    object Label2: TLabel
      Left = 54
      Top = 40
      Width = 66
      Height = 13
      Caption = 'BITIS TARIHI'
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 115
      Height = 13
      Caption = 'GUNLUK HAR. BEDELI'
    end
    object BASLA_DateEdit: TdxDateEdit
      Left = 130
      Top = 12
      Width = 121
      TabOrder = 0
      StyleController = ARI_DM.dxEditStyleController
      Date = -700000.000000000000000000
    end
    object BITIS_DateEdit: TdxDateEdit
      Left = 130
      Top = 36
      Width = 121
      TabOrder = 1
      StyleController = ARI_DM.dxEditStyleController
      Date = -700000.000000000000000000
    end
    object GunlukEdit: TdxMaskEdit
      Left = 131
      Top = 60
      Width = 139
      TabOrder = 2
      IgnoreMaskBlank = False
      StyleController = ARI_DM.dxEditStyleController
    end
    object OKButton: TBitBtn
      Left = 28
      Top = 88
      Width = 113
      Height = 25
      Enabled = False
      TabOrder = 3
      OnClick = OKButtonClick
      Kind = bkOK
    end
    object CancelButton: TBitBtn
      Left = 156
      Top = 88
      Width = 113
      Height = 25
      TabOrder = 4
      Kind = bkCancel
    end
  end
end
