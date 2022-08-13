unit UFrmTabuada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTabuada = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function Digitado : boolean;
  public
    { Public declarations }
  end;

var
  FrmTabuada: TFrmTabuada;

implementation

{$R *.dfm}

procedure TFrmTabuada.Button1Click(Sender: TObject);
var n, i, r : integer;  // declaração de variaveis
begin
  if not Digitado then exit;
  Memo1.Clear;
  n := StrToInt(Edit1.Text);  // StrToInt - texto para inteiro
  for i := 0 to 10 do
  begin
    r := n * i;
    // Numero x Contador = Multiplicação
    Memo1.Lines.Add(Edit1.Text + ' x ' + IntToStr(i) + ' = ' + IntToStr(r));
  end;
end;

procedure TFrmTabuada.Button2Click(Sender: TObject);
var n, i, r : integer;
begin
  ListBox1.Clear;
  n := StrToInt(Edit1.Text);
  i := 0;
  while (i <= 10) do
  begin
    r := n * i;
    ListBox1.Items.Add(Edit1.Text + ' x ' + IntToStr(i) + ' = ' + IntToStr(r));
    inc(i);  // i := i + 1
  end;
end;

function TFrmTabuada.Digitado: boolean;
begin
  if (Edit1.Text <> '') then
    result := True
  else
  begin
    Application.MessageBox('Por favor, informe um número!!', 'Problemas ao executar',
       MB_ICONWARNING);
    Edit1.SetFocus;
    result := False;
  end;
end;

end.
