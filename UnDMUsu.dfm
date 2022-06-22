object DMUsu: TDMUsu
  OldCreateOrder = False
  Height = 230
  Width = 386
  object QrUsuario: TFDQuery
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'select * from usuario;')
    Left = 88
    Top = 32
  end
  object DSPUsuario: TDataSetProvider
    DataSet = QrUsuario
    Left = 144
    Top = 32
  end
  object CDSUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUsuario'
    Left = 208
    Top = 32
    object CDSUsuarioUSU_ID: TStringField
      FieldName = 'USU_ID'
      Required = True
      FixedChar = True
    end
    object CDSUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 50
    end
    object CDSUsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      Size = 80
    end
    object CDSUsuarioUSU_END: TStringField
      FieldName = 'USU_END'
      Size = 80
    end
    object CDSUsuarioUSU_TELEFONE: TStringField
      FieldName = 'USU_TELEFONE'
      Size = 14
    end
    object CDSUsuarioUSU_CPF: TStringField
      FieldName = 'USU_CPF'
      Size = 14
    end
    object CDSUsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Size = 200
    end
  end
  object QrUsuarioAux: TFDQuery
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'select * from usuario;')
    Left = 280
    Top = 32
  end
end
