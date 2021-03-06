unit UnCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnManPadrao, Data.DB, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, UnDMCEP, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, xmldom, xmlintf, xmldoc, Samples.Spin;

type
  TFrmCEP = class(TFrmManPadrao)
    dscadastro: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    edbairro: TEdit;
    Label6: TLabel;
    edcep: TDBEdit;
    edrua: TDBEdit;
    eduf: TDBEdit;
    edcidade: TDBEdit;
    edid: TDBEdit;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actincluirExecute(Sender: TObject);
    procedure actalterarExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);

    procedure BuscaCEP(CEP : String);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    VCodCEP : Integer;
  public
    { Public declarations }
  end;

var
  FrmCEP: TFrmCEP;

implementation

{$R *.dfm}

procedure TFrmCEP.actalterarExecute(Sender: TObject);
begin
  inherited;
  DMCEP.CDSCEP.Edit;
end;

procedure TFrmCEP.actcancelarExecute(Sender: TObject);
begin
  inherited;
  DMCEP.CDSCEP.Cancel;
end;

procedure TFrmCEP.actexcluirExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja mesmo excluir o registro?', mtconfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
    DMCEP.CDSCEP.Delete;
    DMCEP.CDSCEP.ApplyUpdates(0);

    actincluir.Enabled:= true;
    actalterar.Enabled:= true;
    actexcluir.Enabled:= true;
    actcancelar.Enabled:= true;
    actsalvar.Enabled:= true;
    actsair.Enabled:= true;

    PageControl1.ActivePage := TBSConsulta;
    ScrollBox1.enabled:= false;
  end
  else
    actincluir.Enabled:= true;
    actalterar.Enabled:= true;
    actexcluir.Enabled:= true;
    actcancelar.Enabled:= true;
    actsalvar.Enabled:= true;
    actsair.Enabled:= true;

    PageControl1.ActivePage := TBSConsulta;
    ScrollBox1.enabled:= false;
end;

procedure TFrmCEP.actincluirExecute(Sender: TObject);
begin
  inherited;
  DMCEP.CDSCEP.Append;
end;

procedure TFrmCEP.actsalvarExecute(Sender: TObject);
begin
  inherited;
  DMCEP.CDSCEP.Post;
  if (DMCEP.CDSCEP.Changecount > 0) then
    DMCEP.CDSCEP.ApplyUpdates(-1);
end;

procedure TFrmCEP.BuscaCEP(CEP: String);
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

    edrua.Text := raizXML.ChildNodes.FindNode('logradouro').Text;
    edbairro.Text := raizXML.ChildNodes.FindNode('bairro').Text;
    edcidade.Text := raizXML.ChildNodes.FindNode('localidade').Text;
    eduf.Text := raizXML.ChildNodes.FindNode('uf').Text;
  finally
  end;
end;

procedure TFrmCEP.Button1Click(Sender: TObject);
begin
  inherited;
  BuscaCEP(edcep.Text);
end;

procedure TFrmCEP.FormCreate(Sender: TObject);
begin
  inherited;
  //criando o datamodule de CEP para uso
  if not assigned(DMCEP) then
    DMCEP:= TDMCEP.create (nil);
  //sempre que abrir um objeto, destrui-lo

  dscadastro.dataset:= DMCEP.CDSCEP;
end;

procedure TFrmCEP.FormDestroy(Sender: TObject);
begin
  inherited;
  //fecho o datasaet e destruo o objeto
  if assigned(DMCEP) then
  begin
    DMCEP.CDSCEP.close;
    Freeandnil(DMCEP);
  end;

end;

procedure TFrmCEP.FormShow(Sender: TObject);
begin
  inherited;
  //abro o dataset
  DMCEP.CDSCEP.open;
end;

end.
