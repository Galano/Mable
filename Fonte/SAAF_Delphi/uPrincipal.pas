unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, ExtCtrls, StdCtrls, AppEvnts, ActnList,
  uDM_Principal, shellapi ,
  ComCtrls, UrlMon, uSobre, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, System.Actions, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,cxGridExportLink,   dxSkinDarkSide,
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
  cxGridDBTableView, cxGrid, cxTextEdit, cxContainer, cxCheckBox;

type
  TfrmPrincipal = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    sbPrincipal: TStatusBar;
    btnTesteAtualizar: TButton;
    dxSkinController1: TdxSkinController;
    rbMenuPrincipalTab1: TdxRibbonTab;
    rbMenuPrincipal: TdxRibbon;
    btnExibirAcompanhamentos: TdxBarManager;
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
    actProntuario: TAction;
    btnProntuario: TdxBarLargeButton;
    ppMenu: TPopupMenu;
    ExportarExcel1: TMenuItem;
    btnEnviarEmail: TButton;
    cbExibirAcompanhamento: TcxCheckBox;
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
    procedure actProntuarioExecute(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure cbExibirAcompanhamentoClick(Sender: TObject);
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
  uCadastroAluno, uCadastroCandidato, uCadastroParametros,uAcompanhamento,uCadastroBase,
  uRelatorioAlunos, uCadastroFuncionario, uRelatorioProntuario;

{$R *.dfm}

procedure TfrmPrincipal.actAcompanhamentoExecute(Sender: TObject);
var
  frmAcompanhamento: TfrmAcompanhamento;
begin
  frmAcompanhamento := TfrmAcompanhamento.create(self);
  frmAcompanhamento.Show;
  cbExibirAcompanhamento.Checked := False;
end;

procedure TfrmPrincipal.actAlunosExecute(Sender: TObject);
var
  frmCadastroAluno: TfrmCadastroAluno;
begin
  cbExibirAcompanhamento.Checked := False;
  frmCadastroAluno := TfrmCadastroAluno.create(self);
  frmCadastroAluno.ModoBuscar := False;
  frmCadastroAluno.Show;
end;

procedure TfrmPrincipal.actCadastroFuncionarioExecute(Sender: TObject);
var
  frmCadastroFuncionario: TfrmCadastroFuncionario;
begin
  cbExibirAcompanhamento.Checked := False;
  frmCadastroFuncionario := TfrmCadastroFuncionario.create(self);
  //frmCadastroFuncionario.ModoBuscar := true;
  frmCadastroFuncionario.Show;
//  frmCadastroFuncionario.Free;

end;

procedure TfrmPrincipal.actCandidatosExecute(Sender: TObject);
var
  frmCadastroCandidato: TfrmCadastroCandidato;
begin

  cbExibirAcompanhamento.Checked := False;
  frmCadastroCandidato := TfrmCadastroCandidato.create(self);
  frmCadastroCandidato.Show;
end;

procedure TfrmPrincipal.actParametrosExecute(Sender: TObject);
var
  frmCadastroParametros: TfrmCadastroParametros;
begin
  cbExibirAcompanhamento.Checked := False;
  frmCadastroParametros := TfrmCadastroParametros.create(self);
  frmCadastroParametros.Show;
  DM_Principal.CarregarParametros('');
  AtualizaTela;
end;

procedure TfrmPrincipal.actProntuarioExecute(Sender: TObject);
var
  frmProntuario: TfrmProntuario;
begin
  cbExibirAcompanhamento.Checked := False;
  frmProntuario := TfrmProntuario.create(self);
  frmProntuario.Show;
end;

procedure TfrmPrincipal.actRelatorioAlunosExecute(Sender: TObject);
var
  FrmRelatorioAlunos: TFrmRelatorioAlunos;
begin
  cbExibirAcompanhamento.Checked := False;
  FrmRelatorioAlunos := TFrmRelatorioAlunos.create(self);
  FrmRelatorioAlunos.Show;
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

procedure TfrmPrincipal.cbExibirAcompanhamentoClick(Sender: TObject);
begin
  gridProximosRetornos.Visible := cbExibirAcompanhamento.Checked;

  if cbExibirAcompanhamento.Checked then begin
    dm_principal.cdsProximosRetornos.Close;
    dm_principal.cdsProximosRetornos.Open;
  end;

end;

procedure TfrmPrincipal.btnEnviarEmailClick(Sender: TObject);
begin
DM_Principal.EnviarEmail('',
                         '',
                         'mablesaaf@gmail.com',
                         'teste',
                         'teste');

end;

procedure TfrmPrincipal.ExportarExcel1Click(Sender: TObject);
  var saveDialog : TSaveDialog;
begin
  inherited;

   saveDialog := TSaveDialog.Create(self);
   saveDialog.Filter := 'Excel |*.xls';
   saveDialog.DefaultExt := 'xls';
   saveDialog.FilterIndex := 1;
   if saveDialog.Execute then
     ExportGridToExcel(saveDialog.FileName , TcxGrid(ppMenu.PopupComponent) , False);

   saveDialog.Free;

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
var
sCaminho : String;
frmLogin : TfrmLogin;
begin

  DM_Principal.NomeExe := Application.ExeName;
  DM_Principal.CarregarParametros('');

  AtualizaTela;


  // Temporario
  if DM_Principal.VersaoExecutavel <> DM_Principal.VersaoSistema then
  begin
    sCaminho := ExtractFileDir( ParamStr(0) ) + '\Atualizador.exe';
    ShellExecute(Handle,'open',pchar(sCaminho),nil,nil,sw_show);
    Application.Terminate;
    //ShowMessage('Versão desatualizada, entre em contato com o suporte.');
    //Application.Terminate;
  end;

  rbMenuPrincipal.Tabs[0].Active := true;


  frmLogin := TfrmLogin.Create(self);
  frmLogin.ShowModal ;
  if frmLogin.modalresult <> mrOk then
    Application.Terminate;

end;

end.
