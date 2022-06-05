unit UnUsuarioView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnManPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,Vcl.Mask;

type
  TFrmUsuSenhaView = class(TFrmManPadrao)
    DSUsuario: TDataSource;
    Label1: TLabel;
    Nome: TLabel;
    Endereço: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Ed_UsuId: TEdit;
    Ed_NomeUsu: TEdit;
    Ed_EmailUsu: TEdit;
    Ed_EndUsu: TEdit;
    ME_TelUsu: TMaskEdit;
    ME_CPFUsu: TMaskEdit;
    Ed_SenhaUsu: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuSenhaView: TFrmUsuSenhaView;

implementation

{$R *.dfm}

end.
