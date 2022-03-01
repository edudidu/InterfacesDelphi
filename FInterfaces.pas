unit FInterfaces;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  eInteface.Model.Interfaces,
  eInteface.Model.Factory;

type
  TFrmPrincipal = class(TForm)
    EdtNome: TEdit;
    EdtSobreNome: TEdit;
    BtnPrincipal: TButton;
    Memo1: TMemo;
    procedure BtnPrincipalClick(Sender: TObject);
  private
    { Private declarations }
    FPessoa : iPessoa;
  public
    { Public declarations }


  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation





{$R *.dfm}

procedure TFrmPrincipal.BtnPrincipalClick(Sender: TObject);
begin
  FPessoa := TModelPessoaFactory.new.PessoaJuridica;


  Memo1.Lines.Add(FPessoa
                   .Nome(EdtNome.text)
                   .SobreNome(EdtSobreNome.text)
                   .NomeCompleto);
end;

end.
