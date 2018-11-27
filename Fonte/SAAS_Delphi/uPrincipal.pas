unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, ExtCtrls, StdCtrls, AppEvnts, ActnList,
  uDM_Principal, shellapi ,
  ComCtrls, UrlMon, uSobre, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, System.Actions, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxClasses, cxLookAndFeels, dxSkinsForm, cxGraphics,
  cxControls, cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm,
  dxBar, dxRibbon, ulogin, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit;

type
  TfrmPrincipal = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    sbPrincipal: TStatusBar;
    btnTesteAtualizar: TButton;
    dxSkinController1: TdxSkinController;
    rbMenuPrincipalTab1: TdxRibbonTab;
    rbMenuPrincipal: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    btnCandidatos: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxBarLargeButton9: TdxBarLargeButton;
    ActionList1: TActionList;
    actCandidatos: TAction;
    actAlunos: TAction;
    actSair: TAction;
    actParametros: TAction;
    actSobre: TAction;
    actAcompanhamento: TAction;
    actRelatorioAlunos: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    btnCadastroFuncionario: TdxBarLargeButton;
    btnCadastroParceiro: TdxBarLargeButton;
    actCadastroFuncionario: TAction;
    actCadastroEmpresa: TAction;
    rbMenuPrincipalTab2: TdxRibbonTab;
    btnRelMovimentacoes: TdxBarLargeButton;
    actRelMovimentacoes: TAction;
    vwProximosRetornos: TcxGridDBTableView;
    levelProximosRetornos: TcxGridLevel;
    gridProximosRetornos: TcxGrid;
    Splitter1: TSplitter;
    vwProximosRetornosNOME: TcxGridDBColumn;
    vwProximosRetornosMATRICULA: TcxGridDBColumn;
    vwProximosRetornosIDADE: TcxGridDBColumn;
    vwProximosRetornosOBSERVACOES: TcxGridDBColumn;
    vwProximosRetornosDATARETORNO: TcxGridDBColumn;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    actRelCandidatos: TAction;
    procedure actCandidatosExecute(Sender: TObject);
    procedure actAlunosExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTesteAtualizarClick(Sender: TObject);
    procedure actParametrosExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure actAcompanhamentoExecute(Sender: TObject);
    procedure rbMenuPrincipalTabChanged(Sender: TdxCustomRibbon);
    procedure actRelatorioAlunosExecute(Sender: TObject);
    procedure actCadastroFuncionarioExecute(Sender: TObject);
  private
    procedure AtualizaTela;

    { Private declarations }
  public

    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uCadastroAluno, uCadastroCandidato, uCadastroParametros,uAcompanhamento,uCadastroBase, uRelatorioAlunos, uCadastroFuncionario;

{$R *.dfm}

procedure TfrmPrincipal.actAcompanhamentoExecute(Sender: TObject);
var
  frmAcompanhamento: TfrmAcompanhamento;
begin
  frmAcompanhamento := TfrmAcompanhamento.create(self);
  frmAcompanhamento.ShowModal;
  frmAcompanhamento.Free;
  dm_principal.cdsProximosRetornos.Close;
  dm_principal.cdsProximosRetornos.Open;

end;

procedure TfrmPrincipal.actAlunosExecute(Sender: TObject);
var
  frmCadastroAluno: TfrmCadastroAluno;
begin
  frmCadastroAluno := TfrmCadastroAluno.create(self);
  frmCadastroAluno.ShowModal;
  frmCadastroAluno.Free;
end;

procedure TfrmPrincipal.actCadastroFuncionarioExecute(Sender: TObject);
var
  frmCadastroFuncionario: TfrmCadastroFuncionario;
begin
  frmCadastroFuncionario := TfrmCadastroFuncionario.create(self);
  frmCadastroFuncionario.ShowModal;
  frmCadastroFuncionario.Free;

end;

procedure TfrmPrincipal.actCandidatosExecute(Sender: TObject);
var
  frmCadastroCandidato: TfrmCadastroCandidato;
begin
  frmCadastroCandidato := TfrmCadastroCandidato.create(self);
  frmCadastroCandidato.ShowModal;
  frmCadastroCandidato.Free;

end;

procedure TfrmPrincipal.actParametrosExecute(Sender: TObject);
var
  frmCadastroParametros: TfrmCadastroParametros;
begin
  frmCadastroParametros := TfrmCadastroParametros.create(self);
  frmCadastroParametros.ShowModal;
  frmCadastroParametros.Free;
  DM_Principal.CarregarParametros('');
  AtualizaTela;

end;

procedure TfrmPrincipal.actRelatorioAlunosExecute(Sender: TObject);
var
  FrmRelatorioAlunos: TFrmRelatorioAlunos;
begin
  FrmRelatorioAlunos := TFrmRelatorioAlunos.create(self);
  FrmRelatorioAlunos.ShowModal;
  FrmRelatorioAlunos.Free;

end;

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
var
  frmSobre: TfrmSobre;
begin
  frmSobre := TfrmSobre.create(self);
  frmSobre.ShowModal;
  frmSobre.Free;

end;


procedure TfrmPrincipal.AtualizaTela;
begin
  sbPrincipal.Panels[0].Text := 'Versão: ' + DM_Principal.VersaoExecutavel;
  sbPrincipal.Panels[1].Text := 'Qtd.Alunos: ' +
    IntToStr(DM_Principal.QtdAlunosAtivos) + ' / Total Vagas:' +
    IntToStr(DM_Principal.QtdVagas);

  dm_principal.cdsProximosRetornos.Close;
  dm_principal.cdsProximosRetornos.Open;
end;

procedure TfrmPrincipal.btnTesteAtualizarClick(Sender: TObject);
begin
  dm_principal.AtualizarVersao;
end;

procedure TfrmPrincipal.rbMenuPrincipalTabChanged(Sender: TdxCustomRibbon);
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1 do
     if Components[i].ClassName = 'TAction' then
          if TAction(Components[i]).GroupIndex<>999 then
             TAction(Components[i]).Visible := rbMenuPrincipal.Tabs[ TAction(Components[i]).GroupIndex ].Active;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var frmLogin : TfrmLogin;
sCaminho : String;
begin
  DM_Principal.NomeExe := Application.ExeName;
  DM_Principal.CarregarParametros('');

  AtualizaTela;

  frmLogin := TfrmLogin.Create(self);
  frmLogin.ShowModal ;
  if frmLogin.modalresult <> mrOk then
    Application.Terminate;

  // Temporario
  if DM_Principal.VersaoExecutavel <> DM_Principal.VersaoSistema then
  begin
    sCaminho := ExtractFileDir( ParamStr(0) ) + '\Atualizador.exe';
    ShellExecute(Handle,'open',pchar(sCaminho),nil,nil,sw_show);
    Application.Terminate;
    //ShowMessage('Versão desatualizada, entre em contato com o suporte.');
    //Application.Terminate;
  end;

end;

end.
