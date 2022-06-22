unit UnDmConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, FireDAC.Comp.UI, vcl.dialogs,
  FireDAC.Phys.IBBase;

type
  TDmConexao = class(TDataModule)
    FDConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FbDriverLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmConexao.DataModuleCreate(Sender: TObject);
begin
  //seta a lib do mysql
  FbDriverLink.VendorLib:= 'C:\windows\system32\FBCLIENT.DLL';

  //Parametros da conexão
  FDConnection.Params.DriverID := 'FbDriverLink';
  FDConnection.Params.Add('server=127.0.0.1');
  FDConnection.Params.Add('port=3050');
  FDConnection.Params.Database :='C:\Users\rapha\OneDrive\Documentos\GitHub\Aula-Delphi---Sistema-de-pedidos\dbcurso.FDB';
  FDConnection.Params.UserName := 'SYSDBA';
  FDConnection.Params.Password := 'masterkey';
  FDConnection.Params.Add('CharacterSet=ISO8859_2');

  //TENTA CONECTAR COM O BANCO
  try
    FDConnection.Connected := True;
  except on E: exception do
    ShowMessage(e.Message);
  end;

end;

end.
