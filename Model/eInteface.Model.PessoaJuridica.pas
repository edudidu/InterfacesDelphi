unit eInteface.Model.PessoaJuridica;

interface

uses
  eInteface.Model.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)
  private
    FNome : String;
    FSobreNome : String;
    function Nome(Value : String) : iPessoa;
    function SobreNome(Value : String) : iPessoa;
    function NomeCompleto : String;
  public
    class function New : iPessoa;
  end;

implementation

{ TModelPessoaJuridica }

class function TModelPessoaJuridica.New: iPessoa;
begin
  result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaJuridica.NomeCompleto: String;
begin
  Result := FNome +' '+ FSobreNome + ' LTDA ME';
end;

function TModelPessoaJuridica.SobreNome(Value: String): iPessoa;
begin
  Result := self;
  FSobreNome := Value;
end;

end.

