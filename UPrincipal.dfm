object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sistema Posto'
  ClientHeight = 811
  ClientWidth = 1097
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1097
    Height = 811
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 640
    ExplicitTop = 200
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1095
      Height = 809
      Align = alTop
      Alignment = taCenter
      Caption = 'Posto ABC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -80
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 337
      ExplicitTop = 330
      ExplicitWidth = 411
      ExplicitHeight = 97
    end
  end
  object MainMenu1: TMainMenu
    Left = 456
    Top = 232
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Bombas1: TMenuItem
        Caption = 'Bombas'
        OnClick = Bombas1Click
      end
      object anques1: TMenuItem
        Caption = 'Tanques'
        OnClick = anques1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        Visible = False
      end
    end
    object Atendimento1: TMenuItem
      Caption = 'Atendimento'
      object Abastecimento1: TMenuItem
        Caption = 'Abastecimento'
        OnClick = Abastecimento1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Relatrio2: TMenuItem
        Caption = 'Relat'#243'rio'
        OnClick = Relatrio2Click
      end
    end
  end
end
