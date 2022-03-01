program pInterfaces;

uses
  Vcl.Forms,
  FInterfaces in 'FInterfaces.pas' {FrmPrincipal},
  eInteface.Model.Interfaces in 'Model\eInteface.Model.Interfaces.pas',
  eInteface.Model.PessoaFisica in 'Model\eInteface.Model.PessoaFisica.pas',
  eInteface.Model.PessoaJuridica in 'Model\eInteface.Model.PessoaJuridica.pas',
  eInteface.Model.Factory in 'Model\eInteface.Model.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
