object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 319
  Width = 434
  object FDCFirebird: TFDConnection
    Params.Strings = (
      'Database=D:\TesteFortes\DBPOSTOABC'
      'DriverID=FB'
      'Password=masterkey'
      'User_Name=SYSDBA'
      'Server=localhost'
      'Port=3050')
    Left = 48
    Top = 24
  end
  object fdqQryTanque: TFDQuery
    Connection = FDCFirebird
    SQL.Strings = (
      'select * from tanque')
    Left = 72
    Top = 112
    object fdqQryTanqueIDTANQUE: TIntegerField
      FieldName = 'IDTANQUE'
      Origin = 'IDTANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqQryTanqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
  end
  object fdqQryBomba: TFDQuery
    Connection = FDCFirebird
    SQL.Strings = (
      'select * from bomba')
    Left = 176
    Top = 112
    object fdqQryBombaIDBOMBA: TIntegerField
      FieldName = 'IDBOMBA'
      Origin = 'IDBOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqQryBombaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object fdqQryBombaTANQUE: TStringField
      FieldName = 'TANQUE'
      Size = 50
    end
  end
  object fdqConPadrao: TFDQuery
    Connection = FDCFirebird
    Left = 184
    Top = 208
  end
  object fdqQryAbast: TFDQuery
    Connection = FDCFirebird
    Left = 288
    Top = 128
  end
end
