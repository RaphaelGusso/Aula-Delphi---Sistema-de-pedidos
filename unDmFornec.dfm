object dmFornec: TdmFornec
  OldCreateOrder = False
  Height = 261
  Width = 407
  object qrFornec: TFDQuery
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'select * from fornecedor')
    Left = 96
    Top = 48
  end
  object cdsFornec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornec'
    OnReconcileError = cdsFornecReconcileError
    Left = 312
    Top = 48
    object cdsFornecFOR_ID: TIntegerField
      FieldName = 'FOR_ID'
      Required = True
    end
    object cdsFornecFOR_NOME: TStringField
      FieldName = 'FOR_NOME'
      Size = 80
    end
    object cdsFornecFOR_CPF: TStringField
      FieldName = 'FOR_CPF'
      Size = 14
    end
    object cdsFornecFOR_CEP_ID: TIntegerField
      FieldName = 'FOR_CEP_ID'
    end
    object cdsFornecFOR_TELEFONE: TStringField
      FieldName = 'FOR_TELEFONE'
      Size = 14
    end
    object cdsFornecFOR_OBSERVACAO: TMemoField
      FieldName = 'FOR_OBSERVACAO'
      BlobType = ftMemo
    end
  end
  object dspFornec: TDataSetProvider
    DataSet = qrFornec
    Left = 200
    Top = 48
  end
  object qrAux: TFDQuery
    Connection = DmConexao.FDConnection
    Left = 96
    Top = 120
  end
end
