object DMClientes: TDMClientes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 253
  Width = 300
  object QrCliente: TFDQuery
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'select * from CLIENTE')
    Left = 56
    Top = 32
  end
  object DSPCliente: TDataSetProvider
    DataSet = QrCliente
    Left = 128
    Top = 32
  end
  object CDSCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCliente'
    Left = 200
    Top = 32
    object CDSClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSClienteCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Size = 80
    end
    object CDSClienteCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      Size = 14
    end
    object CDSClienteCLI_CEP_ID: TIntegerField
      FieldName = 'CLI_CEP_ID'
      Origin = 'CLI_CEP_ID'
    end
    object CDSClienteCLI_TELEFONE: TStringField
      FieldName = 'CLI_TELEFONE'
      Origin = 'CLI_TELEFONE'
      Size = 14
    end
    object CDSClienteCLI_OBSERVACAO: TMemoField
      FieldName = 'CLI_OBSERVACAO'
      Origin = 'CLI_OBSERVACAO'
      BlobType = ftMemo
    end
  end
  object QrAux: TFDQuery
    Connection = DmConexao.FDConnection
    Left = 56
    Top = 88
  end
end
