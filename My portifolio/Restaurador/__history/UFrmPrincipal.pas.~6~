unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    LblContador: TLabel;
    BtnCancelar: TSpeedButton;
    BtnFechar: TSpeedButton;
    Timer1: TTimer;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnCancelarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    contador : integer;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnCancelarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  BtnCancelar.Left := Random(FrmPrincipal.Width - BtnCancelar.Width);
  BtnCancelar.Top := Random(FrmPrincipal.Height - BtnCancelar.Height);
end;

procedure TFrmPrincipal.BtnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  contador := 1;
  Timer1.Enabled := true;
end;

end.
