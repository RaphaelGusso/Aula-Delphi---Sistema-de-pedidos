object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 297
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 93
    Top = 32
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 88
    Top = 64
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object EdLogin: TEdit
    Left = 136
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdSenha: TEdit
    Left = 136
    Top = 61
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object BtnAcessar: TButton
    Left = 80
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Acessar'
    TabOrder = 2
    OnClick = BtnAcessarClick
  end
  object BtnFechar: TButton
    Left = 168
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BtnFecharClick
  end
  object BtnRecSenha: TButton
    Left = 256
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Rec.Senha'
    TabOrder = 4
  end
end
