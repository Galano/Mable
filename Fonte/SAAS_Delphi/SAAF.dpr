program SAAF;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDM_Principal in 'uDM_Principal.pas' {dm_principal: TDataModule},
  uCadastroBase in 'uCadastroBase.pas' {frmCadastroBase},
  uCadastroAluno in 'uCadastroAluno.pas' {frmCadastroAluno},
  uCadastroCandidato in 'uCadastroCandidato.pas' {frmCadastroCandidato},
  uClasseCadastroCandidato in 'uClasseCadastroCandidato.pas',
  uCadastroParametros in 'uCadastroParametros.pas' {frmCadastroParametros},
  uAbout in 'uAbout.pas' {frmAbout},
  uSobre in 'uSobre.pas' {frmSobre},
  uAcompanhamento in 'uAcompanhamento.pas' {frmAcompanhamento},
  uRelatorioAlunos in 'uRelatorioAlunos.pas' {frmRelatorioAlunos},
  uLogin in 'uLogin.pas' {frmLogin},
  uRelatorioCandidatos in 'uRelatorioCandidatos.pas' {frmRelatorioCandidatos},
  uCadastroFuncionario in 'uCadastroFuncionario.pas' {frmCadastroFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_principal, dm_principal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmCadastroFuncionario, frmCadastroFuncionario);
  Application.Run;
end.
