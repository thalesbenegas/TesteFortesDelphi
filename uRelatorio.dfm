object frmRalatorio: TfrmRalatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 132
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 299
    Height = 132
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label2: TLabel
      Left = 143
      Top = 32
      Width = 6
      Height = 13
      Caption = #224
    end
    object mkeDataIni: TMaskEdit
      Left = 56
      Top = 24
      Width = 81
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object mkeDataFim: TMaskEdit
      Left = 161
      Top = 24
      Width = 81
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object Button1: TButton
      Left = 56
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 167
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
end
