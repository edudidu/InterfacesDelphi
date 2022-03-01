unit eInteface.Model.Factory;

interface

uses
  eInteface.Model.Interfaces;

Type
  TModelPessoaFactory = class(TInterfacedObject, iPessoaFactory)
  public
    constructor Create;
    destructor Destroy ; override;
    class function New : iPessoaFactory;
  private
    function PessoaFisica :iPessoa;
    function PessoaJuridica : iPessoa;
  end;

implementation

uses
  eInteface.Model.PessoaFisica, eInteface.Model.PessoaJuridica;

{ TModelPessoaFactory }

constructor TModelPessoaFactory.Create;
begin

end;

destructor TModelPessoaFactory.Destroy;
begin

  inherited;
end;

class function TModelPessoaFactory.New: iPessoaFactory;
begin
  Result := Self.Create;
end;

function TModelPessoaFactory.PessoaFisica: iPessoa;
begin
  Result := TModelPessoaFisica.New;
end;

function TModelPessoaFactory.PessoaJuridica: iPessoa;
begin
   Result := TModelPessoaJuridica.New;
end;

end.
