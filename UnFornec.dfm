inherited FrmFornecec: TFrmFornecec
  Caption = 'Cadastro de fornecedores'
  ClientHeight = 421
  ClientWidth = 613
  ExplicitWidth = 629
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 613
    ExplicitWidth = 613
  end
  inherited StatusBar1: TStatusBar
    Top = 402
    Width = 613
    ExplicitTop = 402
    ExplicitWidth = 613
  end
  inherited pagecontrol1: TPageControl
    Width = 613
    Height = 308
    ActivePage = TBSDados
    ExplicitWidth = 613
    ExplicitHeight = 308
    inherited TBSConsulta: TTabSheet
      ExplicitWidth = 605
      ExplicitHeight = 280
      inherited gridconsulta: TDBGrid
        Width = 605
        Height = 280
        DataSource = DSFornec
      end
    end
    inherited TBSDados: TTabSheet
      ExplicitWidth = 605
      ExplicitHeight = 280
      inherited ScrollBox1: TScrollBox
        Width = 605
        Height = 280
        ExplicitWidth = 605
        ExplicitHeight = 280
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 124
          Height = 13
          Caption = 'C'#243'digo do fornecedor.....'
        end
        object Label2: TLabel
          Left = 3
          Top = 30
          Width = 122
          Height = 13
          Caption = 'Nome do fornecedor......'
        end
        object Label3: TLabel
          Left = 3
          Top = 60
          Width = 27
          Height = 13
          Caption = 'CPF..'
        end
        object Label4: TLabel
          Left = 145
          Top = 60
          Width = 46
          Height = 13
          Caption = 'Telefone:'
        end
        object Label5: TLabel
          Left = 3
          Top = 92
          Width = 27
          Height = 13
          Caption = 'CEP..'
        end
        object Label6: TLabel
          Left = 130
          Top = 92
          Width = 23
          Height = 13
          Caption = 'Rua:'
        end
        object Label7: TLabel
          Left = 3
          Top = 119
          Width = 37
          Height = 13
          Caption = 'Cidade.'
        end
        object Label8: TLabel
          Left = 163
          Top = 120
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label9: TLabel
          Left = 3
          Top = 143
          Width = 67
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Ed_CodFornec: TEdit
          Left = 133
          Top = 3
          Width = 49
          Height = 21
          TabOrder = 0
        end
        object Ed_NomeFornec: TEdit
          Left = 133
          Top = 30
          Width = 332
          Height = 21
          TabOrder = 1
        end
        object MSE_CPFFornec: TMaskEdit
          Left = 36
          Top = 57
          Width = 91
          Height = 21
          EditMask = '000.000.000-00;1;_'
          MaxLength = 14
          TabOrder = 2
          Text = '   .   .   -  '
        end
        object MSE_TelFornec: TMaskEdit
          Left = 197
          Top = 57
          Width = 82
          Height = 21
          EditMask = '(00)00000-0000;1;_'
          MaxLength = 14
          TabOrder = 3
          Text = '(  )     -    '
        end
        object MSE_CEPFornec: TMaskEdit
          Left = 36
          Top = 89
          Width = 72
          Height = 21
          EditMask = '00.000-000;1;_'
          MaxLength = 10
          TabOrder = 4
          Text = '  .   -   '
        end
        object Ed_RuaFornec: TEdit
          Left = 157
          Top = 89
          Width = 308
          Height = 21
          TabOrder = 5
        end
        object Ed_Cidfornec: TEdit
          Left = 36
          Top = 116
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object Ed_UFFornec: TEdit
          Left = 184
          Top = 117
          Width = 38
          Height = 21
          TabOrder = 7
        end
        object Memo_ObsFornec: TMemo
          Left = 3
          Top = 160
          Width = 302
          Height = 89
          Lines.Strings = (
            '')
          TabOrder = 8
        end
      end
    end
  end
  inherited DBNavigator1: TDBNavigator
    Top = 377
    Width = 613
    Hints.Strings = ()
    ExplicitTop = 377
    ExplicitWidth = 613
  end
  inherited ImageList: TImageList
    Left = 552
  end
  inherited ActionList: TActionList
    Left = 552
    Top = 160
  end
  object DSFornec: TDataSource
    DataSet = dmFornec.cdsFornec
    OnDataChange = DSFornecDataChange
    Left = 552
    Top = 216
  end
end
