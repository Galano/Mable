program SAAS_Testes;

uses
  Forms,
  TestFrameWork,
  GuiTestRunner,
  uClasseTestes in 'uClasseTestes.pas',
  uCadastroAluno in '..\uCadastroAluno.pas' {frmCadastroAluno},
  uCadastroBase in '..\uCadastroBase.pas' {frmCadastroBase},
  uCadastroCandidato in '..\uCadastroCandidato.pas' {frmCadastroCandidato},
  uClasseCadastroCandidato in '..\uClasseCadastroCandidato.pas',
  uDM_Principal in '..\uDM_Principal.pas' {dm_principal: TDataModule},
  uPrincipal in '..\uPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.
