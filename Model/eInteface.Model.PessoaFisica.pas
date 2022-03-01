unit eInteface.Model.PessoaFisica;

interface

uses
  eInteface.Model.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)
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

{ TModelPessoaFisica }

class function TModelPessoaFisica.New: iPessoa;
begin
  result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.NomeCompleto: String;
begin
  Result := FNome +' '+ FSobreNome;
end;

function TModelPessoaFisica.SobreNome(Value: String): iPessoa;
begin
  Result := self;
  FSobreNome := Value;
end;

end.
