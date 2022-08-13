unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmPrincipal = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Confirma o fechamento do Sistema?',
    'Sair', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO) then
    Abort;
end;

end.
