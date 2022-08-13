unit UFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    EdtNome: TEdit;
    Label2: TLabel;
    EdtSenha: TEdit;
    BtnEntrar: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnEntrarClick(Sender: TObject);
  private
    { Private declarations }
    Logou : boolean;
    Contador : integer;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.BtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
  if (EdtNome.Text = 'Admin') and (EdtSenha.Text = '123') then
  begin
    Logou := True;
    Close;
  end
  else
  begin
    Application.MessageBox(
      PWideChar('Usuário e/ou Senha Inválidos! ' + #13 +
      'Número de Tentativas Restantes: ' + IntToStr(3 - Contador)),
      'Problemas ao Logar', MB_ICONWARNING);
    Contador := Contador + 1;
    if (Contador = 4) then
      Application.Terminate;
  end;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not Logou then
    Application.Terminate;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  Logou := False;
  Contador := 1;
end;

end.
