object MBSFrModule: TMBSFrModule
  Left = 730
  Top = 625
  Width = 523
  Height = 279
  Caption = 'MBS Fast Report Module'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frOLEExcelExport1: TfrOLEExcelExport
    CellsAlign = False
    CellsBorders = False
    CellsFillColor = False
    CellsFontColor = False
    CellsFontName = False
    CellsFontSize = False
    CellsFontStyle = False
    ExportPictures = False
    OpenExcelAfterExport = True
    Left = 78
    Top = 78
  end
  object frRtfAdvExport1: TfrRtfAdvExport
    Left = 78
    Top = 182
  end
  object frHTMExport1: TfrHTMExport
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Left = 122
    Top = 84
  end
  object frCSVExport1: TfrCSVExport
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Delimiter = ';'
    Left = 76
    Top = 136
  end
  object frDialogControls1: TfrDialogControls
    Left = 96
    Top = 20
  end
  object frIBXComponents1: TfrIBXComponents
    Left = 162
    Top = 24
  end
  object frDesigner1: TfrDesigner
    Left = 16
    Top = 22
  end
  object frRTFExport1: TfrRTFExport
    ScaleX = 1.300000000000000000
    ScaleY = 1.000000000000000000
    Left = 144
    Top = 188
  end
  object frTextExport1: TfrTextExport
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Left = 136
    Top = 136
  end
  object frJPEGExport1: TfrJPEGExport
    Left = 16
    Top = 84
  end
  object frTIFFExport1: TfrTIFFExport
    Left = 20
    Top = 144
  end
  object frHTML2Export1: TfrHTML2Export
    Scale = 1.000000000000000000
    Navigator.Position = []
    Navigator.Font.Charset = DEFAULT_CHARSET
    Navigator.Font.Color = clWindowText
    Navigator.Font.Height = -11
    Navigator.Font.Name = 'MS Sans Serif'
    Navigator.Font.Style = []
    Navigator.InFrame = False
    Navigator.WideInFrame = False
    Left = 176
    Top = 92
  end
  object frBarCodeObject1: TfrBarCodeObject
    Left = 276
    Top = 20
  end
  object frChartObject1: TfrChartObject
    Left = 278
    Top = 76
  end
  object frShapeObject1: TfrShapeObject
    Left = 286
    Top = 128
  end
  object frCheckBoxObject1: TfrCheckBoxObject
    Left = 288
    Top = 182
  end
  object frRoundRectObject1: TfrRoundRectObject
    Left = 214
    Top = 188
  end
  object frRichObject1: TfrRichObject
    Left = 348
    Top = 132
  end
  object frDBDataSet1: TfrDBDataSet
    Left = 348
    Top = 52
  end
  object frOLEObject1: TfrOLEObject
    Left = 354
    Top = 186
  end
  object frCrossObject1: TfrCrossObject
    Left = 420
    Top = 38
  end
  object frPrintGrid1: TfrPrintGrid
    FitWidth.Enabled = False
    FitWidth.ShrinkOptions = [frsoProportional, frsoShrinkOnly]
    FitWidth.ResizePercent = 30
    FitWidth.ApplyBeforeOnCustomize = False
    PageSize = 9
    PageWidth = 0
    PageHeight = 0
    PageMargins.Left = 0
    PageMargins.Top = 0
    PageMargins.Right = 0
    PageMargins.Bottom = 0
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Color = clWhite
    Title.Frame = []
    Title.FrameWidth = 1
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -13
    PageHeader.Font.Name = 'Arial'
    PageHeader.Font.Style = []
    PageHeader.Color = clWhite
    PageHeader.Frame = []
    PageHeader.FrameWidth = 1
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -13
    PageFooter.Font.Name = 'Arial'
    PageFooter.Font.Style = []
    PageFooter.Color = clWhite
    PageFooter.Frame = []
    PageFooter.FrameWidth = 1
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWhite
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Header.Color = clNavy
    Header.Frame = [frLeft, frTop, frRight, frBottom]
    Header.FrameWidth = 1
    Body.Font.Charset = DEFAULT_CHARSET
    Body.Font.Color = clWindowText
    Body.Font.Height = -13
    Body.Font.Name = 'Arial'
    Body.Font.Style = []
    Body.Color = clWhite
    Body.Frame = [frLeft, frTop, frRight, frBottom]
    Body.FrameWidth = 1
    Left = 414
    Top = 108
  end
  object frPrintTable1: TfrPrintTable
    FitWidth.Enabled = False
    FitWidth.ShrinkOptions = [frsoProportional, frsoShrinkOnly]
    FitWidth.ResizePercent = 30
    FitWidth.ApplyBeforeOnCustomize = False
    PageSize = 9
    PageWidth = 0
    PageHeight = 0
    PageMargins.Left = 0
    PageMargins.Top = 0
    PageMargins.Right = 0
    PageMargins.Bottom = 0
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Color = clWhite
    Title.Frame = []
    Title.FrameWidth = 1
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -13
    PageHeader.Font.Name = 'Arial'
    PageHeader.Font.Style = []
    PageHeader.Color = clWhite
    PageHeader.Frame = []
    PageHeader.FrameWidth = 1
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -13
    PageFooter.Font.Name = 'Arial'
    PageFooter.Font.Style = []
    PageFooter.Color = clWhite
    PageFooter.Frame = []
    PageFooter.FrameWidth = 1
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWhite
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Header.Color = clNavy
    Header.Frame = [frLeft, frTop, frRight, frBottom]
    Header.FrameWidth = 1
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = clWindowText
    Footer.Font.Height = -13
    Footer.Font.Name = 'Arial'
    Footer.Font.Style = [fsItalic]
    Footer.Color = clSilver
    Footer.Frame = [frLeft, frTop, frRight, frBottom]
    Footer.FrameWidth = 1
    Summary.Font.Charset = DEFAULT_CHARSET
    Summary.Font.Color = clWindowText
    Summary.Font.Height = -16
    Summary.Font.Name = 'Arial'
    Summary.Font.Style = [fsItalic]
    Summary.Color = clWhite
    Summary.Frame = []
    Summary.FrameWidth = 1
    Body.Font.Charset = DEFAULT_CHARSET
    Body.Font.Color = clWindowText
    Body.Font.Height = -13
    Body.Font.Name = 'Arial'
    Body.Font.Style = []
    Body.Color = clWhite
    Body.Frame = [frLeft, frTop, frRight, frBottom]
    Body.FrameWidth = 1
    PrintOptions = [frpoHeader, frpoHeaderOnEveryPage]
    AutoOrientation.Enabled = True
    AutoOrientation.ResizePercent = 20
    DoublePassReport = False
    PreviewButtons = [pbZoom, pbSave, pbPrint, pbFind, pbHelp, pbExit, pbPageSetup]
    Left = 414
    Top = 158
  end
end
