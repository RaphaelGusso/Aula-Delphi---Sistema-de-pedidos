unit Bib;

interface

uses System.SysUtils;

Function ValidaCPF(cpf:string) : Boolean;

implementation

Function ValidaCPF(cpf:string) : Boolean;
var dig10, dig11: string;
    s, i, r, peso: Integer;
begin
  //lengt - retorna o tamanho da string (CPF é um numero formado por
  if ((CPF = '00000000000') OR (CPF = '11111111111') OR
     (CPF = '2222222222') OR (CPF = '33333333333') OR
     (CPF = '4444444444') OR (CPF = '5555555555')  OR
     (CPF = '66666666666') OR (CPF = '77777777777') OR
     (CPF = '88888888888') OR (CPF = '99999999999') OR
     (length(CPF) <> 11)) then
  begin
    Result:= false;
    exit;
  end;

    // try - protege o código para eventuais erros de conversão de tipo
  try
  {*-- Cálculo do 1 digito verificador--*}
    s := 0;
    peso:= 10;
    for i := 1 to 9 do
    begin
      //StrtoInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrtoInt(CPF[i]) * peso);
      peso := peso -1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
      dig10 := '0'
    else
    str(r:1, dig10);//converte um número no respectivo caractere numerico
    {*-- calculo do 2 digito verificador--*}
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrtoInt(CPF[i])) * peso;
      peso := peso -1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
      dig11 := '0'
    else
      str(r:1, dig11);

      {verifica se os digitos calculados conferem com os digitos informados}
    if ((dig10 = CPF[10]) and (dig11 = CPF[11])) then
      Result := true
    else
      Result := false;
  except
    Result := false;
  end;
end;
end.
