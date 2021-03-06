object DMCEP: TDMCEP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 217
  Width = 431
  object qrCEP: TFDQuery
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'select * from CEP')
    Left = 56
    Top = 24
  end
  object DSPCEP: TDataSetProvider
    DataSet = qrCEP
    Left = 128
    Top = 24
  end
  object CDSCEP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCEP'
    Left = 200
    Top = 24
    object CEP_ID: TIntegerField
      FieldName = 'CEP_ID'
      Required = True
    end
    object CEP_CEP: TStringField
      FieldName = 'CEP_CEP'
      Size = 10
    end
    object CEP_UF: TStringField
      FieldName = 'CEP_UF'
      FixedChar = True
      Size = 2
    end
    object CEP_RUA: TStringField
      FieldName = 'CEP_RUA'
      Size = 80
    end
    object CEP_CIDADE: TStringField
      FieldName = 'CEP_CIDADE'
      Size = 30
    end
  end
end
