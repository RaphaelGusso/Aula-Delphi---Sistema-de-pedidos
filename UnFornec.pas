unit UnFornec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnManPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask, Vcl.StdCtrls, UnClasseFornec;

type
  TFrmFornecec = class(TFrmManPadrao)
    DSFornec: TDataSource;
    Ed_CodFornec: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Ed_NomeFornec: TEdit;
    Label3: TLabel;
    MSE_CPFFornec: TMaskEdit;
    Label4: TLabel;
    MSE_TelFornec: TMaskEdit;
    Label5: TLabel;
    MSE_CEPFornec: TMaskEdit;
    Label6: TLabel;
    Ed_RuaFornec: TEdit;
    Label7: TLabel;
    Ed_Cidfornec: TEdit;
    Label8: TLabel;
    Ed_UFFornec: TEdit;
    Label9: TLabel;
    Memo_ObsFornec: TMemo;
    {procedure actInserirExecute(Sender: TObject);}
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure DSFornecDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure actincluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure actincluirExecute(Sender: TObject);
  private
    { Private declarations }
    oFornec: TFornecedor;
    vCodCep: integer;

    procedure MostraDados;
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  FrmFornecec: TFrmFornecec;

implementation

{$R *.dfm}

uses UnDmConexao, unDmFornec;

{ TFrmFornecec }

procedure TFrmFornecec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    FreeAndNil(oFornec);
end;

procedure TFrmFornecec.FormCreate(Sender: TObject);
begin
  inherited;
  oFornec := TFornecedor.Create;
end;

procedure TFrmFornecec.actCancelarExecute(Sender: TObject);
begin
  oFornec.Cancelar;
  actincluir.Enabled:= true;
  actalterar.Enabled:= true;
  actexcluir.Enabled:= true;
  actcancelar.Enabled:= true;
  actsalvar.Enabled:= true;
  actsair.Enabled:= true;
end;

procedure TFrmFornecec.actEditarExecute(Sender: TObject);
begin
  oFornec.Alterar;
end;

procedure TFrmFornecec.actExcluirExecute(Sender: TObject);
begin
    if MessageDlg('Deseja mesmo excluir o registro?', mtConfirmation,
                   [mbYes, mbNo], 0) = mrYes then
  begin
    oFornec.Excluir;
  end;
end;

procedure TFrmFornecec.actincluirExecute(Sender: TObject);
begin
  inherited;
  LimpaCampos;
  oFornec.Incluir;
  //Ed_codFornec.Text:= oFornec.GetNextCodigo;

end;

procedure TFrmFornecec.actsalvarExecute(Sender: TObject);
begin
  inherited;
  oFornec.Codigo := StrToInt(Ed_CodFornec.Text);
  oFornec.nome := Ed_NomeFornec.Text;
  oFornec.cpf := MSE_CPFFornec.Text;
  oFornec.telefone := MSE_telFornec.Text;
  oFornec.cep := vCodCep;
  oFornec.obs := MEMO_ObsFornec.Lines.Text;

  oFornec.Salvar;
end;

procedure TFrmFornecec.DSFornecDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //MOSTRA OS DADOS QUANDO MUDA DE REGISTRO
  if Assigned(oFornec) then
  begin
    if (dsFornec.DataSet.State=dsBrowse) then
      MostraDados;
  end;
end;

procedure TFrmFornecec.FormShow(Sender: TObject);
begin
  inherited;
  MostraDados;
end;

procedure TFrmFornecec.LimpaCampos;
begin
  vCodCep := 0;

  Ed_CodFornec.text:='0';
  Ed_NomeFornec.Text:='';
  MSE_CPFFornec.Text:='';
  MSE_TelFornec.Text:='';
  MSE_CEPfORNEC.Text:='';
  Ed_RuaFornec.Text:='';
  Ed_CidFornec.Text:= '';
  Ed_UFFornec.Text:= '';
  MEMO_ObsFornec.Lines.Text:='';
end;

procedure TFrmFornecec.MostraDados;
begin
  oFornec.GetDados;
  //Ed_CodFornec.Value := oFornec.codigo;
  Ed_NomeFornec.Text := oFornec.nome;
  MSE_CPFFornec.Text := oFornec.cpf;
  VcodCep := oFornec.cep;
  MSE_TelFornec.Text := oFornec.telefone;
  MEMO_ObsFornec.Lines.text := oFornec.obs;
end;

end.
