object DmConexao: TDmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 317
  Width = 463
  object FDConnection: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\rapha\OneDrive\Documentos\GitHub\Aula-Delphi--' +
        '-Sistema-de-pedidos\DBCURSO.FDB'
      'Port=3050'
      'Server=127.0.0.1'
      'DriverID=FB')
    LoginPrompt = False
    Left = 392
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 304
    Top = 24
  end
  object FbDriverLink: TFDPhysFBDriverLink
    DriverID = 'FbDriverLink'
    Left = 208
    Top = 24
  end
end
