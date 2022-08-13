program Validador;

uses
  Vcl.Forms,
  UFrmValidador in 'UFrmValidador.pas' {Form1},
  UValidador in 'UValidador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
