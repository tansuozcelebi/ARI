object f06_DinamikRaporlarForm: Tf06_DinamikRaporlarForm
  Left = 495
  Top = 501
  Width = 412
  Height = 373
  Caption = 'Raporlar Formu [f06]'
  Color = clBtnFace
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
  object FileListBox: TFileListBox
    Left = 0
    Top = 75
    Width = 404
    Height = 182
    Align = alClient
    ItemHeight = 13
    Mask = '*.frf'
    TabOrder = 0
    OnClick = FileListBoxClick
    OnDblClick = FileListBoxDblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 404
    Height = 75
    Align = alTop
    Color = 15332339
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 54
      Width = 39
      Height = 13
      Caption = '-------------'
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 402
      Height = 34
      AutoSize = True
      ButtonHeight = 30
      Caption = 'ToolBar1'
      Color = 16777153
      ParentColor = False
      TabOrder = 0
      object ToolButton4: TToolButton
        Left = 0
        Top = 2
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object PreviewBtn: TBitBtn
        Left = 8
        Top = 2
        Width = 120
        Height = 30
        Hint = 'Se'#231'ili raporu gostermek i'#231'in kullanilir.'
        Caption = '&Raporla'
        TabOrder = 1
        OnClick = PreviewBtnClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
      end
      object ToolButton1: TToolButton
        Left = 128
        Top = 2
        Width = 8
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object DesignBtn: TBitBtn
        Left = 136
        Top = 2
        Width = 120
        Height = 30
        Hint = 'Se'#231'ili raporu d'#252'zenlemek i'#231'in kullanilir.'
        Caption = '&Duzenle'
        TabOrder = 0
        OnClick = DesignBtnClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777B387777777777777BB387777777777777BB3877777
          77777777BB387777777777777BB387777777777777BB387788777777777BB388
          008777777777BB300007777777777B0008877777777770008077777777770008
          0B77777777700080B77777777777777777777777777777777777}
      end
      object ToolButton2: TToolButton
        Left = 256
        Top = 2
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object BitBtn1: TBitBtn
        Left = 264
        Top = 2
        Width = 120
        Height = 30
        Hint = 'Yeni rapor haz'#305'rlamak i'#231'in kullanilir.'
        Caption = '&Yeni Rapor'
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666666666666666666666666666000066666666FFF666666666
          666666FFF666666600006666666811F66666666666666877F666666600006666
          666811F66666666666666877F666666600006666666811F66666666666666877
          F666666600006666FFF611FFFFF6666666FFF777FFFFF6660000666811111111
          11F66666687777777777F666000066681111111111F66666687777777777F666
          000066688888116888666666688888777888666600006666666811F666666666
          66666877F666666600006666666811F66666666666666877F666666600006666
          666811F66666666666666877F666666600006666666888666666666666666888
          6666666600006666666666666666666666666666666666660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
      end
      object ToolButton3: TToolButton
        Left = 384
        Top = 2
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 1
        Style = tbsSeparator
      end
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 257
    Width = 404
    Height = 89
    Align = alBottom
    Color = 14286809
    TabOrder = 2
  end
  object frReport: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 274
    Top = 103
    ReportForm = {19000000}
  end
  object frReportDesign: TfrReport
    InitialZoom = pzDefault
    ModalPreview = False
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 270
    Top = 156
    ReportForm = {19000000}
  end
end
