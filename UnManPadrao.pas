unit UnManPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ToolWin, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrmManPadrao = class(TForm)
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    ToolButton1: TToolButton;
    TBSConsulta: TTabSheet;
    TBSDados: TTabSheet;
    gridconsulta: TDBGrid;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ImageList: TImageList;
    ActionList: TActionList;
    actincluir: TAction;
    actalterar: TAction;
    actcancelar: TAction;
    actexcluir: TAction;
    actsalvar: TAction;
    actsair: TAction;
    pagecontrol1: TPageControl;
    DBNavigator1: TDBNavigator;
    ScrollBox1: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton3Click(Sender: TObject);
    procedure actincluirExecute(Sender: TObject);
    procedure actalterarExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure actsairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure DisplayHint(Sender : TObject);
  public
    { Public declarations }

  end;

var
  FrmManPadrao: TFrmManPadrao;

implementation

{$R *.dfm}

procedure TFrmManPadrao.actalterarExecute(Sender: TObject);
begin
  actincluir.Enabled:= false;
  actalterar.Enabled:= false;
  actexcluir.Enabled:= false;
  actcancelar.Enabled:= true;
  actsalvar.Enabled:= true;
  actsair.Enabled:= false;

  //foca na aba de formulario
  pagecontrol1.Activepage:= TBSDados;
end;

procedure TFrmManPadrao.actcancelarExecute(Sender: TObject);
begin
  actincluir.Enabled:= true;
  actalterar.Enabled:= true;
  actexcluir.Enabled:= true;
  actcancelar.Enabled:= true;
  actsalvar.Enabled:= true;
  actsair.Enabled:= true;

  PageControl1.ActivePage := TBSConsulta;
  ScrollBox1.enabled:= false;
end;

procedure TFrmManPadrao.actexcluirExecute(Sender: TObject);
begin
  actincluir.Enabled:= false;
  actalterar.Enabled:= false;
  actexcluir.Enabled:= false;
  actcancelar.Enabled:= true;
  actsalvar.Enabled:= true;
  actsair.Enabled:= false;
  PageControl1.ActivePage := TBSConsulta;
  ScrollBox1.enabled:= false;
end;

procedure TFrmManPadrao.actincluirExecute(Sender: TObject);
begin
   // incluir os registro
  actincluir.Enabled:= false;
  actalterar.Enabled:= false;
  actexcluir.Enabled:= false;
  actcancelar.Enabled:= true;
  actsalvar.Enabled:= true;
  actsair.Enabled:= false;

  PageControl1.ActivePage := TBSDados;
  ScrollBox1.enabled:= true;
end;

procedure TFrmManPadrao.actsairExecute(Sender: TObject);
begin
 close;
end;

procedure TFrmManPadrao.actsalvarExecute(Sender: TObject);
begin
  actincluir.Enabled:= true;
  actalterar.Enabled:= true;
  actexcluir.Enabled:= true;
  actcancelar.Enabled:= false;
  actsalvar.Enabled:= false;
  actsair.Enabled:= true;
  pagecontrol1.Activepage:= TBSConsulta;
  ScrollBox1.enabled:= false;
end;

procedure TFrmManPadrao.DisplayHint(Sender: TObject);
begin
  if assigned(statusbar1) then
    StatusBar1.Panels[0].Text := 'Mensagem' + Application.Hint;
end;

procedure TFrmManPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= cafree;
end;

procedure TFrmManPadrao.FormCreate(Sender: TObject);
begin
  Application.OnHint := DisplayHint;
end;

procedure TFrmManPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) then
    perform(WM_nextdlgctl,0,0)
  else if (key=#27) then
  perform(WM_nextdlgctl,0,0)
end;

procedure TFrmManPadrao.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage:= TBSConsulta;
end;

procedure TFrmManPadrao.ToolButton3Click(Sender: TObject);
begin
  actincluir.Enabled:= false;
  actalterar.Enabled:= false;
  actexcluir.Enabled:= false;
  actcancelar.Enabled:= true;
  actsalvar.Enabled:= true;
  actsair.Enabled:= false;

  //foca na aba de formulario
  PageControl1.ActivePage := TBSDados;
  ScrollBox1.enabled:= true;
end;

end.
