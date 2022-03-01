unit eInteface.Model.Interfaces;

interface

type
  iPessoa = interface
    ['{208B5626-E759-4DCA-BE85-C9AB2F26C8A7}']
    function Nome(Value : String) : iPessoa;
    function SobreNome(Value : String) : iPessoa;
    function NomeCompleto : String;
  end;

  iPessoaFactory = interface
    ['{5AEC8398-56E6-4C9F-9178-5771933ABEB8}']
    function PessoaFisica : iPessoa;
    function PessoaJuridica : iPessoa;
  end;

implementation

end.
