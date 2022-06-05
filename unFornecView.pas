unit unFornecView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unManPadrao, Data.DB, Vcl.Menus,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, unClasseFornec,
  Vcl.StdCtrls;

type
  TfrmPadrao1 = class(TfrmPadrao)
    ed_codigo: TEdit;
    ed_nome: TEdit;
    ed_cpf: TEdit;
    ed_cep: TEdit;
    ed_telefone: TEdit;
    ed_rua: TEdit;
    ed_cidade: TEdit;
    ed_uf: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Telefone: TLabel;
    Label8: TLabel;
    ed_obs: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure actInserirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
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
  frmPadrao1: TfrmPadrao1;

implementation

{$R *.dfm}

{ TfrmPadrao1 }

procedure TfrmPadrao1.actCancelarExecute(Sender: TObject);
begin
  inherited;
  oFornec.Cancelar;
end;

procedure TfrmPadrao1.actEditarExecute(Sender: TObject);
begin
  inherited;
  oFornec.Alterar;
end;

procedure TfrmPadrao1.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja mesmo excluir o registro?', mtConfirmation,
                [mbYes, mbNo], 0) = mrYes then
  begin
    oFornec.Excluir;
  end;
end;

procedure TfrmPadrao1.actInserirExecute(Sender: TObject);
begin
  inherited;
  //Limpo campos
  LimpaCampos;

  oFornec.Incluir
  //ed_codigo.value:=oFornec.GetCodigo;
end;

procedure TfrmPadrao1.actSalvarExecute(Sender: TObject);
begin
  inherited;
  //oFornec.codigo := ed_codigo.value;
  oFornec.nome := ed_nome.Text;
  oFornec.cpf := ed_cpf.Text;
  oFornec.telefone := ed_telefone.Text;
  oFornec.cep := vCodCep;
  oFornec.obs := ed_obs.Lines.Text;
end;

procedure TfrmPadrao1.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //MOSTRA OS DADOS QUANDO MUDA DE REGISTRO
  if Assigned(oFornec) then
  begin
    if (dsCadastro.DataSet.State=dsBrowse) then
      MostraDados;
  end;
end;

procedure TfrmPadrao1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(oFornec);
  inherited;
end;

procedure TfrmPadrao1.FormCreate(Sender: TObject);
begin
  inherited;
  oFornec := TFornecedor.Create;
  dsCadastro.DataSet := oFornec.GetCds;
end;

procedure TfrmPadrao1.FormShow(Sender: TObject);
begin
  inherited;
  MostraDados;
end;

procedure TfrmPadrao1.LimpaCampos;
begin
  vCodCep := 0;

  ed_codigo.text:='0';
  ed_nome.Text:='';
  ed_cep.Text:='';
  ed_rua.Text:='';
  ed_cidade.Text:='';
  ed_uf.Text:='';
  ed_telefone.Text:='';
  ed_obs.Lines.Text:='';

end;

procedure TfrmPadrao1.MostraDados;
begin
  oFornec.GetDados;

  //ed_codigo.text := oFornec.codigo;
  ed_nome.Text := oFornec.nome;
  ed_cpf.Text := oFornec.cpf;
  VcodCep := oFornec.cep;
  ed_telefone.Text := oFornec.telefone;
  ed_obs.Lines.text := oFornec.obs;

end;

end.
