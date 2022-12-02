object frmBombasMnt: TfrmBombasMnt
  Left = 0
  Top = 0
  Caption = 'Bombas'
  ClientHeight = 190
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 145
    Align = alClient
    Caption = #39
    TabOrder = 0
    object lblCodigo: TLabel
      Left = 24
      Top = 16
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object Label1: TLabel
      Left = 112
      Top = 16
      Width = 92
      Height = 15
      Caption = 'Descri'#231#227'o Bomba'
    end
    object Label2: TLabel
      Left = 24
      Top = 84
      Width = 38
      Height = 15
      Caption = 'Tanque'
    end
    object edtCodigo: TEdit
      Left = 24
      Top = 40
      Width = 65
      Height = 23
      ReadOnly = True
      TabOrder = 0
    end
    object edtDescricao: TEdit
      Left = 112
      Top = 40
      Width = 417
      Height = 23
      MaxLength = 40
      TabOrder = 1
    end
    object cmbTanques: TComboBox
      Left = 24
      Top = 105
      Width = 313
      Height = 23
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 547
    Height = 45
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 373
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 456
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
