program Tabuada;

uses
  Vcl.Forms,
  UFrmTabuada in 'UFrmTabuada.pas' {FrmTabuada};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmTabuada, FrmTabuada);
  Application.Run;
end.
