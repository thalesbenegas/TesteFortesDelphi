object frmTanques: TfrmTanques
  Left = 0
  Top = 0
  Caption = 'Tanques'
  ClientHeight = 441
  ClientWidth = 730
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
    Top = 384
    Width = 730
    Height = 57
    Align = alBottom
    TabOrder = 0
    object btnIncluir: TButton
      Left = 472
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 561
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TButton
      Left = 648
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 730
    Height = 384
    Align = alClient
    DataSource = dsTanque
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object dsTanque: TDataSource
    DataSet = DM.fdqQryTanque
    Left = 480
    Top = 248
  end
end
