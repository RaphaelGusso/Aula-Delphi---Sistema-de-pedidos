﻿inherited FrmUsuario: TFrmUsuario
  Caption = 'Cadastro de usu'#225'rios'
  ClientHeight = 370
  ClientWidth = 591
  OnDestroy = FormDestroy
  ExplicitWidth = 607
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 591
    ExplicitWidth = 591
  end
  inherited StatusBar1: TStatusBar
    Top = 351
    Width = 591
    ExplicitTop = 351
    ExplicitWidth = 591
  end
  inherited pagecontrol1: TPageControl
    Width = 591
    Height = 257
    ActivePage = TBSDados
    ExplicitWidth = 591
    ExplicitHeight = 257
    inherited TBSConsulta: TTabSheet
      ExplicitWidth = 583
      ExplicitHeight = 229
      inherited gridconsulta: TDBGrid
        Width = 583
        Height = 229
        DataSource = DSUsuario
      end
    end
    inherited TBSDados: TTabSheet
      ExplicitWidth = 583
      ExplicitHeight = 229
      inherited ScrollBox1: TScrollBox
        Width = 583
        Height = 229
        ExplicitWidth = 583
        ExplicitHeight = 229
        object Label1: TLabel
          Left = 20
          Top = 16
          Width = 38
          Height = 13
          Caption = 'Id.......'
        end
        object Nome: TLabel
          Left = 20
          Top = 43
          Width = 39
          Height = 13
          Caption = 'Nome...'
        end
        object Endereço: TLabel
          Left = 20
          Top = 70
          Width = 68
          Height = 13
          Caption = 'Email...........'
        end
        object Label4: TLabel
          Left = 20
          Top = 102
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label5: TLabel
          Left = 20
          Top = 134
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label6: TLabel
          Left = 187
          Top = 134
          Width = 43
          Height = 13
          Caption = 'CPF......'
        end
        object Label7: TLabel
          Left = 20
          Top = 162
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Ed_UsuId: TEdit
          Left = 57
          Top = 13
          Width = 43
          Height = 21
          TabOrder = 0
        end
        object Ed_NomeUsu: TEdit
          Left = 57
          Top = 40
          Width = 392
          Height = 21
          TabOrder = 1
        end
        object Ed_EmailUsu: TEdit
          Left = 81
          Top = 67
          Width = 184
          Height = 21
          TabOrder = 2
        end
        object Ed_EndUsu: TEdit
          Left = 81
          Top = 99
          Width = 242
          Height = 21
          TabOrder = 3
        end
        object ME_TelUsu: TMaskEdit
          Left = 68
          Top = 131
          Width = 110
          Height = 21
          TabOrder = 4
          Text = ''
        end
        object ME_CPFUsu: TMaskEdit
          Left = 226
          Top = 131
          Width = 121
          Height = 21
          TabOrder = 5
          Text = ''
        end
        object Ed_SenhaUsu: TEdit
          Left = 57
          Top = 159
          Width = 184
          Height = 21
          PasswordChar = '#'
          TabOrder = 6
        end
      end
    end
  end
  inherited DBNavigator1: TDBNavigator
    Top = 326
    Width = 591
    Hints.Strings = ()
    ExplicitTop = 326
    ExplicitWidth = 591
  end
  object DSUsuario: TDataSource
    DataSet = DMUsu.CDSUsuario
    Left = 496
    Top = 208
  end
end
