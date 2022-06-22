unit UnClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnManPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Samples.Spin,xmldom, xmlintf, xmldoc;

type
  TFrmclientes = class(TFrmManPadrao)
    DSCadastroCliente: TDataSource;
    Ed_codigo: TSpinEdit;
    Ed_cpf: TMaskEdit;
    Label1: TLabel;
    Ed_nome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Ed_cep: TMaskEdit;
    Label4: TLabel;
    Button1: TButton;
    Ed_rua: TEdit;
    Label5: TLabel;
    Ed_cidade: TEdit;
    Ed_uf: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Ed_telefone: TMaskEdit;
    Label8: TLabel;
    Ed_obs: TMemo;
    Label9: TLabel;
    Ed_bairro: TEdit;
    Label10: TLabel;
    Pnbloqueioclientes: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actincluirExecute(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DSCadastroClienteDataChange(Sender: TObject; Field: TField);
    procedure gridconsultaTitleClick(Column: TColumn);
    procedure actexcluirExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
  private
    { Private declarations }
    vCodCep: integer;
    procedure BuscaCEP(CEP: string);
    procedure MostraDados;
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  Frmclientes: TFrmclientes;

implementation

{$R *.dfm}

uses UnDMClientes, unDmCep;

procedure TFrmclientes.actcancelarExecute(Sender: TObject);
begin
  inherited;
  Pnbloqueioclientes.Color:= clAppWorkSpace;
end;

procedure TFrmclientes.actexcluirExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja mesmo excluir o registro?', mtconfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
    DMClientes.CDSCliente.Delete;
    DMClientes.CDSCliente.ApplyUpdates(0);

  actincluir.Enabled:= true;
  actalterar.Enabled:= true;
  actexcluir.Enabled:= true;
  actcancelar.Enabled:= true;
  actsalvar.Enabled:= true;
  actsair.Enabled:= true;

  PageControl1.ActivePage := TBSConsulta;
  ScrollBox1.enabled:= false;
  end;
end;

procedure TFrmclientes.actincluirExecute(Sender: TObject);
begin
  inherited;
  Pnbloqueioclientes.Color:= clBtnFace;
  //coloco o dataset no modo de inclusão
  LimpaCampos;
  // Coloco o dataset no modo de inserção
  DMClientes.CDSCliente.Append;
  //Busco o próximo registro
  DMClientes.QrAux.SQL.Clear;
  DMClientes.QrAux.SQL.Add('select MAX(CLI_ID) as Codigo from CLIENTE');
  DMClientes.QrAux.Open;
  ed_codigo.Value := dmClientes.qrAux.FieldByName('codigo').AsInteger +1;
  DMClientes.QrAux.Close;
end;

procedure TFrmclientes.actsalvarExecute(Sender: TObject);
begin
  inherited;
  if (dmClientes.cdsCliente.State=dsInsert) then
begin
  //atribuição dos valores para os campos do banco
  DMClientes.CDSCliente.FieldByName('CLI_ID').AsInteger       := Ed_codigo.Value;
  DMClientes.CDSCliente.FieldByName('CLI_NOME').AsString      := Ed_nome.text;
  DMClientes.CDSCliente.FieldByName('CLI_CPF').AsString       := Ed_cpf.text;
  DMClientes.CDSCliente.FieldByName('CLI_CEP_ID').AsInteger   := 1;
  DMClientes.CDSCliente.FieldByName('CLI_TELEFONE').AsString  := Ed_telefone.text;
  DMClientes.CDSCliente.FieldByName('CLI_OBSERVACAO').AsString:= Ed_obs.Lines.Text;
end
  else if (dmClientes.cdsCliente.State=dsEdit) then
begin
  //atribuição dos campos
  dmClientes.cdsCliente.FieldByName('CLI_NOME').AsString := ed_nome.Text;
  dmClientes.cdsCliente.FieldByName('CLI_CEP_ID').AsInteger := 1;
  dmClientes.cdsCliente.FieldByName('CLI_TELEFONE').AsString := ed_telefone.Text;
  dmClientes.cdsCliente.FieldByName('CLI_OBSERVACAO').AsString:= ed_obs.Lines.Text;
end;
  //Salvo em memoria
  dmClientes.cdsCliente.Post;
  //Persisto no banco
if (dmClientes.cdsCliente.ChangeCount > 0) then
  dmClientes.cdsCliente.ApplyUpdates(-1);

  Pnbloqueioclientes.Color:= clAppWorkSpace;
end;

procedure TFrmclientes.BuscaCEP(CEP: string);
var
  XMLDocument1: IXMLDocument;
  raizXML: IXMLNode;
begin
  XMLDocument1 := TXMLDocument.Create(nil);
  try
    //mm_xml.Clear;
    XMLDocument1.FileName := 'https://viacep.com.br/ws/' + Trim(cep) + '/xml/';
    XMLDocument1.Active := true;
    //mm_xml.lines.text := XMLDocument1.XML.text;

    raizXML := XMLDocument1.DocumentElement;

    ed_rua.Text := raizXML.ChildNodes.FindNode('logradouro').Text;
    ed_bairro.Text := raizXML.ChildNodes.FindNode('bairro').Text;
    ed_cidade.Text := raizXML.ChildNodes.FindNode('localidade').Text;
    ed_uf.Text := raizXML.ChildNodes.FindNode('uf').Text;
  finally
 end;
end;

procedure TFrmclientes.Button1Click(Sender: TObject);
begin
  inherited;
  BuscaCEP(ed_cep.text);
end;

procedure TFrmclientes.DSCadastroClienteDataChange(Sender: TObject;
  Field: TField);
begin
inherited;
  if (DMCEP.CDSCEP.Active) and
  (dmclientes.CDSCliente.State<>dsInsert) then
  MostraDados;
end;

procedure TFrmclientes.FormCreate(Sender: TObject);
begin
  inherited;
  // criando o datamodule de clientes para uso
  if not assigned (DMClientes)  then
    DMClientes := TDMClientes.Create(nil);

  //Criando o datamodule de Cep para uso
  if not Assigned(DMCEP) then
    DMCEP := TDMCEP.Create(nil);

  DSCadastroCliente.DataSet := DMClientes.CDSCliente;
end;

procedure TFrmclientes.FormDestroy(Sender: TObject);
begin
  inherited;
  // fecho o dataset e destruo o objeto
  if assigned(DMClientes) then
    DMClientes.CDSCliente.Close;
  FreeAndNil (DMclientes);
end;
procedure TFrmclientes.FormShow(Sender: TObject);
begin
  inherited;
  // abro o dataset
  DMClientes.CDSCliente.Open;
  DMCEP.CDSCEP.Open;
  MostraDados;
end;

procedure TFrmclientes.gridconsultaTitleClick(Column: TColumn);
begin
inherited;
  //Ordenar o grid pela coluna iusando clientdataset
  DMClientes.CDSCliente.IndexFieldNames:= Column.FieldName;
end;

procedure TFrmclientes.LimpaCampos;
begin
  ed_codigo.Value:=0;
  ed_nome.Text:='';
  ed_cpf.Text:='';
  ed_cep.Text:='';
  ed_rua.Text:='';
  ed_bairro.Text:='';
  ed_uf.Text:='';
  ed_telefone.Text:='';
  ed_obs.Text:='';
end;

procedure TFrmclientes.MostraDados;
begin
  ed_codigo.Value:=dmClientes.cdsCliente.FieldByName('CLI_ID').AsInteger;
  ed_nome.Text:=dmClientes.cdsCliente.FieldByName('CLI_NOME').AsString;
  vCodCep:=dmClientes.cdsCliente.FieldByName('CLI_CEP_ID').AsInteger;

  if (DMCEP.CDSCEP.Locate('CEP_ID', VarArrayOf([vCodCep]),[])) then
  begin
      vCodCep:= DmCep.CDSCEP.FieldByName('CEP_ID').AsInteger;
      ed_cep.Text:= DmCep.CDSCEP.FieldByName('CEP_CEP').AsString;
      ed_rua.Text:= DmCep.CDSCEP.FieldByName('CEP_RUA').AsString;
      ed_bairro.Text:= dmCep.CDSCEP.FieldByName('CEP_CIDADE').AsString;
      ed_uf.Text:= DmCep.CDSCEP.FieldByName('CEP_UF').AsString;
  end;
  ed_telefone.Text :=  dmClientes.cdsCliente.FieldByName('CLI_TELEFONE').AsString;
  ed_obs.Text :=  dmClientes.cdsCliente.FieldByName('CLI_OBSERVACAO').AsString;
end;

procedure TFrmclientes.ToolButton3Click(Sender: TObject);
begin
  inherited;
  DMClientes.CDSCliente.Edit;
  Pnbloqueioclientes.Color:= clBtnFace;


end;

end.
