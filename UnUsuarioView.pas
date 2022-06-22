unit UnUsuarioView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnManPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,Vcl.Mask, UnClasseUsuario;

type
  TFrmUsuario = class(TFrmManPadrao)
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
    procedure actincluirExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    oUsuario : TUsuario;
  public
    { Public declarations }
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

{$R *.dfm}

procedure TFrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:= CaFree;
end;

procedure TFrmUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  oUsuario:= TUsuario.Create;
end;

procedure TFrmUsuario.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil (oUsuario);
end;

procedure TFrmUsuario.actcancelarExecute(Sender: TObject);
begin
  inherited;
  oUsuario.Cancelar;
end;

procedure TFrmUsuario.actexcluirExecute(Sender: TObject);
begin
    if MessageDlg('Deseja mesmo excluir o registro?', mtConfirmation,
                   [mbYes, mbNo], 0) = mrYes then
  begin
    oUsuario.Excluir;
  end;
end;

procedure TFrmUsuario.actincluirExecute(Sender: TObject);
begin
  inherited;
  oUsuario.Incluir;
end;

procedure TFrmUsuario.actsalvarExecute(Sender: TObject);
begin
  inherited;
  oUsuario.codigo := Ed_UsuID.Text;
  oUsuario.nome := Ed_NomeUsu.Text;
  oUsuario.Email :=Ed_EmailUsu.Text;
  oUsuario.Endereço := Ed_EndUsu.Text;
  oUsuario.Telefone := ME_TelUsu.Text;
  oUsuario.CPF := ME_CPFUsu.Text;
  oUsuario.Senha:= Ed_SenhaUsu.Text;

  oUsuario.Salvar;
end;

procedure TFrmUsuario.ToolButton3Click(Sender: TObject);
begin
  inherited;
  oUsuario.Alterar;
end;

end.
