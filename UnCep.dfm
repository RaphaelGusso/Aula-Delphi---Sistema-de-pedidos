inherited FrmCEP: TFrmCEP
  Caption = 'Cadastro de CEPs'
  ClientHeight = 390
  ClientWidth = 607
  OnDestroy = FormDestroy
  ExplicitWidth = 623
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 607
    ExplicitTop = 0
    ExplicitWidth = 607
  end
  inherited StatusBar1: TStatusBar
    Top = 371
    Width = 607
    ExplicitTop = 371
    ExplicitWidth = 607
  end
  inherited pagecontrol1: TPageControl
    Width = 607
    Height = 277
    ExplicitWidth = 607
    ExplicitHeight = 277
    inherited TBSConsulta: TTabSheet
      ExplicitWidth = 599
      ExplicitHeight = 249
      inherited gridconsulta: TDBGrid
        Width = 599
        Height = 249
        DataSource = dscadastro
      end
    end
    inherited TBSDados: TTabSheet
      ExplicitWidth = 599
      ExplicitHeight = 249
      object Label1: TLabel [0]
        Left = 24
        Top = 16
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 88
        Top = 16
        Width = 19
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 186
        Top = 16
        Width = 13
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 22
        Top = 63
        Width = 21
        Height = 13
        Caption = 'RUA'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 22
        Top = 110
        Width = 38
        Height = 13
        Caption = 'CIDADE'
        FocusControl = DBEdit5
      end
      inherited ScrollBox1: TScrollBox
        Width = 601
        Height = 247
        TabOrder = 5
        ExplicitWidth = 601
        ExplicitHeight = 247
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 35
        Width = 44
        Height = 21
        DataField = 'CEP_ID'
        DataSource = dscadastro
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 35
        Width = 79
        Height = 21
        DataField = 'CEP_CEP'
        DataSource = dscadastro
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 186
        Top = 35
        Width = 30
        Height = 21
        DataField = 'CEP_UF'
        DataSource = dscadastro
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 22
        Top = 82
        Width = 400
        Height = 21
        DataField = 'CEP_RUA'
        DataSource = dscadastro
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 22
        Top = 130
        Width = 145
        Height = 21
        DataField = 'CEP_CIDADE'
        DataSource = dscadastro
        TabOrder = 4
      end
    end
  end
  inherited DBNavigator1: TDBNavigator
    Top = 346
    Width = 607
    DataSource = dscadastro
    Hints.Strings = ()
    ExplicitTop = 346
    ExplicitWidth = 607
  end
  object dscadastro: TDataSource
    DataSet = DMCEP.CDSCEP
    Left = 496
    Top = 208
  end
end
