unit UFrmValidador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    radTipoDoc: TRadioGroup;
    edtDoc: TMaskEdit;
    btnVerificar: TBitBtn;
    Label1: TLabel;
    btnLimpar: TBitBtn;
    procedure btnLimparClick(Sender: TObject);
    procedure radTipoDocClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UValidador;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  edtDoc.Clear;
  edtDoc.SetFocus;
end;

procedure TForm1.btnVerificarClick(Sender: TObject);
begin
  if (radTipoDoc.ItemIndex = 0) then
  begin
    if (isCPF(edtDoc.Text)) then
      application.MessageBox('CPF Válido!!!', 'Verificar', MB_ICONINFORMATION)
    else
      application.MessageBox('CPF Inválido!!!', 'Verificar', MB_ICONWARNING)
  end
  else
  begin
    if (isCNPJ(edtDoc.Text)) then
      application.MessageBox('CNPJ válido!!!', 'Verificar', MB_ICONINFORMATION)
    else
      application.MessageBox('CNPJ Inválido!!!', 'Verificar', MB_ICONWARNING)
  end;
end;

procedure TForm1.radTipoDocClick(Sender: TObject);
begin
  if (radTipoDoc.ItemIndex = 0) then
    edtDoc.EditMask := '999.999.999-99;0;_'
  else
    edtDoc.EditMask := '99.999.999/9999-99;0;_';
end;

end.
