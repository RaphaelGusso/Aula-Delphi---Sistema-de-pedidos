inherited FrmCEP: TFrmCEP
  Align = alClient
  Caption = 'Cadastro de CEPs'
  ClientHeight = 429
  ClientWidth = 717
  OnDestroy = FormDestroy
  ExplicitWidth = 733
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 717
    ExplicitWidth = 717
  end
  inherited StatusBar1: TStatusBar
    Top = 410
    Width = 717
    ExplicitTop = 410
    ExplicitWidth = 717
  end
  inherited pagecontrol1: TPageControl
    Width = 717
    Height = 316
    ExplicitWidth = 717
    ExplicitHeight = 316
    inherited TBSConsulta: TTabSheet
      ExplicitWidth = 709
      ExplicitHeight = 288
      inherited gridconsulta: TDBGrid
        Width = 709
        Height = 288
        DataSource = dscadastro
      end
    end
    inherited TBSDados: TTabSheet
      ExplicitWidth = 709
      ExplicitHeight = 288
      object Label1: TLabel [0]
        Left = 24
        Top = 16
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object Label2: TLabel [1]
        Left = 88
        Top = 16
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label3: TLabel [2]
        Left = 186
        Top = 16
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label4: TLabel [3]
        Left = 22
        Top = 63
        Width = 21
        Height = 13
        Caption = 'RUA'
      end
      object Label5: TLabel [4]
        Left = 22
        Top = 110
        Width = 38
        Height = 13
        Caption = 'CIDADE'
      end
      inherited ScrollBox1: TScrollBox
        Left = 3
        Top = -1
        Width = 702
        Height = 286
        ExplicitLeft = 3
        ExplicitTop = -1
        ExplicitWidth = 702
        ExplicitHeight = 286
        object Label7: TLabel
          Left = 16
          Top = 38
          Width = 23
          Height = 13
          Caption = 'CEP:'
        end
        object Label8: TLabel
          Left = 278
          Top = 94
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label9: TLabel
          Left = 16
          Top = 69
          Width = 23
          Height = 13
          Caption = 'Rua:'
        end
        object Label10: TLabel
          Left = 278
          Top = 67
          Width = 37
          Height = 13
          Caption = 'Cidade:'
        end
        object Label6: TLabel
          Left = 13
          Top = 91
          Width = 32
          Height = 13
          Caption = 'Bairro:'
        end
        object Label11: TLabel
          Left = 278
          Top = 45
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Button1: TButton
          Left = 185
          Top = 35
          Width = 60
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = Button1Click
        end
        object edbairro: TEdit
          Left = 44
          Top = 94
          Width = 228
          Height = 21
          TabOrder = 1
        end
        object edcep: TDBEdit
          Left = 45
          Top = 37
          Width = 134
          Height = 21
          DataField = 'CEP_CEP'
          DataSource = dscadastro
          TabOrder = 2
        end
        object edrua: TDBEdit
          Left = 45
          Top = 67
          Width = 227
          Height = 21
          DataField = 'CEP_RUA'
          DataSource = dscadastro
          TabOrder = 3
        end
        object eduf: TDBEdit
          Left = 316
          Top = 91
          Width = 30
          Height = 21
          DataField = 'CEP_UF'
          DataSource = dscadastro
          TabOrder = 4
        end
        object edcidade: TDBEdit
          Left = 316
          Top = 64
          Width = 141
          Height = 21
          DataField = 'CEP_CIDADE'
          DataSource = dscadastro
          TabOrder = 5
        end
        object edid: TDBEdit
          Left = 316
          Top = 37
          Width = 30
          Height = 21
          DataField = 'CEP_ID'
          DataSource = dscadastro
          TabOrder = 6
        end
      end
    end
  end
  inherited DBNavigator1: TDBNavigator
    Top = 385
    Width = 717
    DataSource = dscadastro
    Hints.Strings = ()
    ExplicitTop = 385
    ExplicitWidth = 717
  end
  inherited ImageList: TImageList
    Left = 600
  end
  inherited ActionList: TActionList
    Left = 600
  end
  object dscadastro: TDataSource
    DataSet = DMCEP.CDSCEP
    Left = 600
    Top = 200
  end
end
