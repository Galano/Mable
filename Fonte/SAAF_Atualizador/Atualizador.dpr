program Atualizador;

uses
  Vcl.Forms,
  uAtualizador in 'uAtualizador.pas' {frmPrincipal},
  uDM_Principal in '..\SAAF_Delphi\uDM_Principal.pas' {dm_principal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm_principal, dm_principal);
  Application.Run;
end.
