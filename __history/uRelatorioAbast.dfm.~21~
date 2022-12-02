object frmRelatorioAbast: TfrmRelatorioAbast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Abastecimento'
  ClientHeight = 487
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rlRelAbastecimento: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsRelAbast
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Abastecimento'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 24
      BandType = btHeader
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 339
        Top = 0
        Width = 40
        Height = 16
        Align = faCenterTop
        Info = itTitle
        Text = ''
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 594
        Top = 0
        Width = 124
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'P'#225'g:'
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 62
      Width = 718
      Height = 27
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 33
        Height = 16
        Align = faTopOnly
        Caption = 'Data'
      end
      object RLLabel2: TRLLabel
        Left = 136
        Top = 0
        Width = 52
        Height = 16
        Align = faTopOnly
        Caption = 'Tanque'
      end
      object RLLabel3: TRLLabel
        Left = 371
        Top = 0
        Width = 49
        Height = 16
        Align = faTopOnly
        Caption = 'Bomba'
      end
      object RLLabel4: TRLLabel
        Left = 680
        Top = 0
        Width = 38
        Height = 16
        Align = faRightTop
        Caption = 'Valor'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 18
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'DATA'
        DataSource = dsRelAbast
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 136
        Top = 0
        Width = 137
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'TANQUE_USADO'
        DataSource = dsRelAbast
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 371
        Top = 0
        Width = 110
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'BOMBA_USADA'
        DataSource = dsRelAbast
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 640
        Top = 0
        Width = 78
        Height = 16
        Align = faRightTop
        DataField = 'VALOR'
        DataSource = dsRelAbast
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 107
      Width = 718
      Height = 22
      BandType = btFooter
      object RLDBResult1: TRLDBResult
        Left = 631
        Top = 0
        Width = 87
        Height = 16
        Align = faRightTop
        DataField = 'VALOR'
        DataSource = dsRelAbast
        Info = riSum
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 528
        Top = 3
        Width = 70
        Height = 16
        Caption = 'Valor Total:'
      end
    end
  end
  object dsRelAbast: TDataSource
    DataSet = DM.fdqQryRelAbast
    Left = 744
    Top = 400
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 400
    Top = 288
  end
end
