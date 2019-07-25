program DesingPrinciples;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {frmPrincipal},
  FormPrincipalController in 'FormPrincipalController.pas',
  InterfaceFuncionarioModel in 'InterfaceFuncionarioModel.pas',
  FuncionarioDAO in 'FuncionarioDAO.pas',
  FuncionarioComissionadoModel in 'FuncionarioComissionadoModel.pas',
  FuncionarioAssalariadoModel in 'FuncionarioAssalariadoModel.pas',
  FuncionarioAssalariadoComComissaoModel in 'FuncionarioAssalariadoComComissaoModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
