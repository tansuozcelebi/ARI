object f02_IntroForm: Tf02_IntroForm
  Left = 605
  Top = 376
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'ARI Personel Takip'
  ClientHeight = 177
  ClientWidth = 283
  Color = 15987699
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ProgramIcon: TImage
    Left = 0
    Top = 0
    Width = 283
    Height = 130
    Align = alClient
    Center = True
    Picture.Data = {
      0A544A504547496D61676514040000FFD8FFE000104A46494600010100000100
      010000FFDB004300100B0C0E0C0A100E0D0E1211101318291B18161618322426
      1E293B343E3D3A34393841495E50414559463839526F53596164696A693F4F73
      7B72667A5E676965FFDB004301111212181518301B1B30654339436565656565
      6565656565656565656565656565656565656565656565656565656565656565
      65656565656565656565656565FFC00011080054007003012200021101031101
      FFC4001A000101000301010000000000000000000000020103040506FFC40028
      1000020201040103050003000000000000000102110304122131511322411432
      52617105A1B1FFC4001801010101010100000000000000000000000003010402
      FFC4001F110003000203000301000000000000000000010203111221310461E1
      41FFDA000C03010002110311003F00FBEB164D8B00AB164D8B00CCE71C71729B
      4A2BB672C75D2C8EF0E9E7387E574689B7AED53C69BF431F75F2CEFB8C229711
      4BA269BA7D748AB4A176B6CCE3C8B243724D7E9F68AB21494BA69FF0CD944499
      562C972489F53C006CB166ADECA8CAD005D87CAA7CA26C5804D8B22CE6CFAFC5
      865B799497691954A56D9B32E9E91D9673EB73FA3A76D3F74B846997F91C71C7
      B9C24A4FA8B5D9E7EA7553D4B5B92497C2239334A9D27D9D18B053ADB5D1D787
      2CE18D69F4B1DD3EE73F84CDB1D06F7BB51965397F781A6D4E971E18A8C942FB
      4FB3AA392335719292FD31112D76F6664BA96F4B473BD1FA5EFD3CE5192E69BE
      19D7195C536A9B44D8B2D32A7C2356EBD137C9364B76C59E8F05599B22C5980D
      CA568CD9AA0F8B2ACD069CD370C3392ED23CBFA794F4B1C905BA5293B3D39252
      8B8BE9AA39F45BB1A9E292FB1F0FC90C91CA9267462BE12DAF4E1D4A9425084F
      B8C5235E283CB9638E3DC9D1E8EA348B3E4DFBDC5D5744E1D23C1259632529C7
      A4F8442B0572FA3A67E4470F7B319658F4F38E0D3E28E4C9D39495F2747A38A2
      93C93861CCFF00075FE8E153C9A39CE538DE4C8BDB2BEBC99C71D2C20B26A723
      C93973B62FFE855DF9F8639DADEFF4F423927197A792B777192EA48BDECE6C7A
      9C1A88474F8E12C6D7D8DAE99719EE8A6F87D35FB3AA2B67264873FCD1B5F95D
      18B254A8CB5E0A123362C9FEB171401B93A42C8DC2C022C59162CD30BB16458B
      006451947DD14CF3B362FA69C249EEE6F95C1E83E512FC349AFD92C9895AFB2D
      8B2BC6FE8D38355ADC8B763C519453F88D1D2ED64936B6EF4A55E1FC9CB96138
      2DFA793835CB8A7C33663D57D4D377BA31A971F364E139AE34FB2991AA9E52BA
      36D94DD248D69F21BE4E9394AB164D8B00B52A2ECD36662C03162C9B160C2AC5
      9362C02AC3E49B16005766BC3856252F2DD9B2C598E537B3D2A693465704BE0C
      D987C9A79162C9601A55949F0451560120006000000000000000000000000000
      1FFFD9}
    IsControl = True
  end
  object InfoLabel: TLabel
    Left = 26
    Top = 112
    Width = 23
    Height = 13
    Caption = 'MBS'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 130
    Width = 283
    Height = 47
    Align = alBottom
    Color = 7960953
    TabOrder = 0
    DesignSize = (
      283
      47)
    object Label1: TLabel
      Left = 20
      Top = 7
      Width = 242
      Height = 13
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'ARI Personel Takip Sistemi (c) 2003-2004 '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 7
      Top = 27
      Width = 264
      Height = 13
      Anchors = [akLeft, akTop, akRight, akBottom]
      Smooth = True
      TabOrder = 0
    end
  end
end