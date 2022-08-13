unit UValidador;

interface

function isCPF(CPF : string) : boolean;
function isCNPJ(CNPJ : string) : boolean;

implementation

uses SysUtils;


function isCPF(CPF : string): boolean;
var d10, d11 : string;
    s, i, r, p : integer;
begin
  if (length(CPF) <> 11) then
  begin
    result := false;
    exit;
  end;
  try
    s := 0;
    p := 10;
    for i := 1 to 9 do
    begin
      s := s + (StrToInt(CPF[i]) * p);
      p := p - 1;
    end;
    r := s mod 11;
    if (r < 2) then
      d10 := '0'
    else
      d10 := IntToStr(11 - r);
    // Valida o digito 10
    if (CPF[10] <> d10) then
    begin
      result := false;
      exit;
    end;

    s := 0;
    p := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * p);
      p := p - 1;
    end;
    r := s mod 11;
    if (r < 2) then
      d11 := '0'
    else
      d11 := IntToStr(11 - r);

    if (CPF[11] = d11) then
      result := true
    else
      result := false;

  except
    result := false;
  end;

end;


function isCNPJ(CNPJ : string): boolean;
var d13, d14 : string;
    s, i, r, p : integer;
begin
  if (length(CNPJ) <> 14) then
  begin
    result := false;
    exit;
  end;
  try
    s := 0;
    p := 5;
    for i := 1 to 12 do
    begin
      s := s + (StrToInt(CNPJ[i]) * p);
      p := p - 1;
      if (p = 1) then p := 9;
    end;
    r := s mod 11;
    if (r < 2) then
      d13 := '0'
    else
      d13 := IntToStr(11 - r);
    // Valida o digito 13
    if (CNPJ[13] <> d13) then
    begin
      result := false;
      exit;
    end;

    s := 0;
    p := 6;
    for i := 1 to 13 do
    begin
      s := s + (StrToInt(CNPJ[i]) * p);
      p := p - 1;
      if (p = 1) then p := 9;
    end;
    r := s mod 11;
    if (r < 2) then
      d14 := '0'
    else
      d14 := IntToStr(11 - r);

    if (CNPJ[14] = d14) then
      result := true
    else
      result := false;

  except
    result := false;
  end;

end;


end.
