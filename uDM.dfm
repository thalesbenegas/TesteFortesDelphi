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
    Connected = True
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
  object fdqQryRelAbast: TFDQuery
    Connection = FDCFirebird
    SQL.Strings = (
      'select cast(a.dataabastecimento as date) as Data,'
      '       c.descricao as tanque_usado,'
      '       b.descricao as bomba_usada,'
      '       SUM(a.vlimposto) as Valor'
      '  from abastecimento a'
      ' inner join Bomba b on b.idbomba = a.idbomba'
      ' inner join tanque c on c.idtanque = b.idtanque'
      
        ' where cast(a.dataabastecimento as date) between '#39'01.12.2022'#39' an' +
        'd '#39'03.12.2022'#39
      
        ' group by cast(a.dataabastecimento as date), c.descricao, b.desc' +
        'ricao')
    Left = 304
    Top = 200
    object fdqQryRelAbastDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdqQryRelAbastTANQUE_USADO: TStringField
      FieldName = 'TANQUE_USADO'
      Origin = 'TANQUE_USADO'
      Size = 40
    end
    object fdqQryRelAbastBOMBA_USADA: TStringField
      FieldName = 'BOMBA_USADA'
      Origin = 'BOMBA_USADA'
      Size = 40
    end
    object fdqQryRelAbastVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
end
