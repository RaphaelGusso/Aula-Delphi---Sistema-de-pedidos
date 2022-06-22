inherited Frmclientes: TFrmclientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 501
  ClientWidth = 705
  Position = poDesigned
  OnDestroy = FormDestroy
  ExplicitWidth = 721
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 705
    ExplicitWidth = 705
  end
  inherited StatusBar1: TStatusBar
    Top = 482
    Width = 705
    ExplicitTop = 482
    ExplicitWidth = 705
  end
  inherited pagecontrol1: TPageControl
    Width = 705
    Height = 388
    ActivePage = TBSDados
    ExplicitWidth = 705
    ExplicitHeight = 388
    inherited TBSConsulta: TTabSheet
      ExplicitWidth = 697
      ExplicitHeight = 360
      inherited gridconsulta: TDBGrid
        Width = 697
        Height = 360
        DataSource = DSCadastroCliente
        OnTitleClick = gridconsultaTitleClick
      end
    end
    inherited TBSDados: TTabSheet
      ExplicitWidth = 697
      ExplicitHeight = 360
      inherited ScrollBox1: TScrollBox
        Width = 697
        Height = 360
        ExplicitWidth = 697
        ExplicitHeight = 360
        object Pnbloqueioclientes: TPanel
          Left = 0
          Top = 0
          Width = 693
          Height = 356
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          object Label9: TLabel
            Left = 19
            Top = 237
            Width = 67
            Height = 13
            Caption = 'Observa'#231#245'es:'
          end
          object Label8: TLabel
            Left = 21
            Top = 191
            Width = 46
            Height = 13
            Caption = 'Telefone:'
          end
          object Label7: TLabel
            Left = 525
            Top = 144
            Width = 17
            Height = 13
            Caption = 'UF:'
          end
          object Label6: TLabel
            Left = 385
            Top = 144
            Width = 37
            Height = 13
            Caption = 'Cidade:'
          end
          object Label5: TLabel
            Left = 19
            Top = 144
            Width = 23
            Height = 13
            Caption = 'Rua:'
          end
          object Label4: TLabel
            Left = 19
            Top = 97
            Width = 23
            Height = 13
            Caption = 'CEP:'
          end
          object Label3: TLabel
            Left = 317
            Top = 50
            Width = 72
            Height = 13
            Caption = 'CPF do cliente:'
          end
          object Label2: TLabel
            Left = 21
            Top = 50
            Width = 82
            Height = 13
            Caption = 'Nome do Cliente:'
          end
          object Label10: TLabel
            Left = 303
            Top = 144
            Width = 32
            Height = 13
            Caption = 'Bairro:'
          end
          object Label1: TLabel
            Left = 21
            Top = 3
            Width = 37
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object Ed_uf: TEdit
            Left = 525
            Top = 163
            Width = 30
            Height = 21
            CharCase = ecUpperCase
            Color = clAppWorkSpace
            TabOrder = 0
          end
          object Ed_telefone: TMaskEdit
            Left = 19
            Top = 210
            Width = 119
            Height = 21
            EditMask = '(99)99999-9999;1;_'
            MaxLength = 14
            TabOrder = 1
            Text = '(  )     -    '
          end
          object Ed_rua: TEdit
            Left = 19
            Top = 163
            Width = 278
            Height = 21
            Color = clAppWorkSpace
            TabOrder = 2
          end
          object Ed_obs: TMemo
            Left = 19
            Top = 256
            Width = 470
            Height = 94
            TabOrder = 3
          end
          object Ed_nome: TEdit
            Left = 19
            Top = 69
            Width = 278
            Height = 21
            MaxLength = 80
            TabOrder = 4
          end
          object Ed_cpf: TMaskEdit
            Left = 316
            Top = 69
            Width = 120
            Height = 21
            EditMask = '999.999.999-99;1;_'
            MaxLength = 14
            TabOrder = 5
            Text = '   .   .   -  '
          end
          object Ed_codigo: TSpinEdit
            Left = 19
            Top = 22
            Width = 70
            Height = 22
            Color = clAppWorkSpace
            MaxValue = 0
            MinValue = 0
            TabOrder = 6
            Value = 0
          end
          object Ed_cidade: TEdit
            Left = 385
            Top = 163
            Width = 121
            Height = 21
            Color = clAppWorkSpace
            TabOrder = 7
          end
          object Ed_cep: TMaskEdit
            Left = 19
            Top = 117
            Width = 69
            Height = 21
            TabOrder = 8
            Text = ''
          end
          object Ed_bairro: TEdit
            Left = 303
            Top = 163
            Width = 71
            Height = 21
            Color = clAppWorkSpace
            TabOrder = 9
          end
          object Button1: TButton
            Left = 95
            Top = 117
            Width = 82
            Height = 18
            Caption = 'Consultar CEP'
            TabOrder = 10
            OnClick = Button1Click
          end
        end
      end
    end
  end
  inherited DBNavigator1: TDBNavigator
    Top = 457
    Width = 705
    Hints.Strings = ()
    ExplicitTop = 457
    ExplicitWidth = 705
  end
  inherited ImageList: TImageList
    Left = 648
    Top = 96
  end
  inherited ActionList: TActionList
    Left = 632
    Top = 168
  end
  object DSCadastroCliente: TDataSource
    DataSet = DMClientes.CDSCliente
    OnDataChange = DSCadastroClienteDataChange
    Left = 568
    Top = 96
  end
end
