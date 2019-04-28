unit uAcompanhamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroBase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, Menus,
  dxBar, cxClasses, ActnList, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, uDM_Principal, cxContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxMemo, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.Actions,
  cxGroupBox, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, dateutils,
  ppVar, dxGDIPlusClasses, uCadastroAluno, uCadastroFuncionario;

type
  TfrmAcompanhamento = class(TfrmCadastroBase)
    vwGridBaseACOMPANHAMENTO: TcxGridDBColumn;
    vwGridBaseALUNO: TcxGridDBColumn;
    vwGridBaseFUNCIONARIO: TcxGridDBColumn;
    vwGridBaseDATA: TcxGridDBColumn;
    vwGridBaseOBSERVACOES: TcxGridDBColumn;
    vwGridBaseNOME: TcxGridDBColumn;
    cbDataMov: TcxDBDateEdit;
    mmObservacao: TcxDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbcbAluno: TcxDBLookupComboBox;
    cbDataRetorno: TcxDBDateEdit;
    Label4: TLabel;
    btnBuscarAluno: TButton;
    Label5: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    btnBuscarFunc: TButton;
    dxBarLargeButton2: TdxBarLargeButton;
    actEnviarEmail: TAction;
    procedure actNovoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure cbDataMovExit(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure btnBuscarAlunoClick(Sender: TObject);
    procedure btnBuscarFuncClick(Sender: TObject);
    procedure actEnviarEmailExecute(Sender: TObject);
  private
    procedure ValidarData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcompanhamento: TfrmAcompanhamento;

implementation

{$R *.dfm}

procedure TfrmAcompanhamento.actCancelarExecute(Sender: TObject);
begin
   if dm_principal.cdsAcompanhamento.State<>dsBrowse then
      dm_principal.cdsAcompanhamento.Cancel;
  inherited;

end;

procedure TfrmAcompanhamento.actEditarExecute(Sender: TObject);
begin
  inherited;
  dm_principal.cdsAcompanhamento.Edit;
end;

procedure TfrmAcompanhamento.actEnviarEmailExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja enviar e-mail de observações para o aluno '+dm_principal.cdsAcompanhamentoNOME.AsString+'?',mtWarning,[mbYes,mbNo],1) =mrYes then
  begin
        DM_Principal.EnviarEmail('',
                                 '',
                                 dm_principal.cdsAcompanhamentoEMAIL.AsString,
                                 'Informe de Acompanhamento',
                                 dm_principal.cdsAcompanhamentoOBSERVACOES.AsString);

  end;


end;

procedure TfrmAcompanhamento.actNovoExecute(Sender: TObject);
begin
  inherited;
   dm_principal.cdsAluno.Close;
   dm_principal.cdsAluno.Open;

   if dm_principal.cdsAcompanhamento.State<>dsBrowse then
      dm_principal.cdsAcompanhamento.Cancel;

   dm_principal.cdsAcompanhamento.Append;
   dm_principal.cdsAcompanhamentoDATA.AsDateTime := now;
   dm_principal.cdsAcompanhamentoDATARETORNO.AsDateTime := IncMonth( now,6);

end;

procedure TfrmAcompanhamento.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  dm_principal.cdsListarAlunos.Close;
  dm_principal.cdsListarAlunos.Open;
end;

procedure TfrmAcompanhamento.actSalvarExecute(Sender: TObject);
begin

     if Trim(dbcbAluno.Text)='' then
    begin
      Showmessage('Informe o Nome.');
      Abort;
    end;

    if Trim(cbDataRetorno.Text)='' then
    begin
      Showmessage('Informe a data.');
      Abort;
    end;
  ValidarData;

  inherited;

  dm_principal.cdsAcompanhamento.Post;
  dm_principal.cdsAcompanhamento.ApplyUpdates(0);

  dm_principal.cdsAcompanhamento.Close;
  dm_principal.cdsAcompanhamento.Open;

end;

procedure TfrmAcompanhamento.btnBuscarAlunoClick(Sender: TObject);
var
  frmCadastroAluno: TfrmCadastroAluno;
begin
  frmCadastroAluno := TfrmCadastroAluno.create(self);
  frmCadastroAluno.WindowState := wsNormal;
  frmCadastroAluno.FormStyle   := fsNormal;
  frmCadastroAluno.Position    := poScreenCenter;
  frmCadastroAluno.ModoBuscar := True;
  frmCadastroAluno.ShowModal;
  dbcbAluno.EditValue :=  frmCadastroAluno.AlunoSelecionado;
  frmCadastroAluno.Free;
end;

procedure TfrmAcompanhamento.btnBuscarFuncClick(Sender: TObject);
var
  frmCadastroFuncionario: TfrmCadastroFuncionario;
begin
  frmCadastroFuncionario := TfrmCadastroFuncionario.create(self);
  frmCadastroFuncionario.ModoBuscar := true;
  frmCadastroFuncionario.ShowModal;
  frmCadastroFuncionario.Free;


end;

procedure TfrmAcompanhamento.cbDataMovExit(Sender: TObject);
begin
  inherited;
  ValidarData;
end;

procedure TfrmAcompanhamento.ValidarData;
begin
  if (cbDataRetorno.Date < Now)
  or ( YearOf(cbDataRetorno.Date) >  ( YearOf(now)+2) )
  then
  begin
    ShowMessage('Não é possivel marcar um acompanhamento para a data informada.');
    cbDataMov.SetFocus;
    Abort;
  end;
end;

procedure TfrmAcompanhamento.FormCreate(Sender: TObject);
begin
  inherited;
  dm_principal.cdsListarAlunos.Close;
  dm_principal.cdsListarAlunos.Open;

  dm_principal.cdsListarFuncionarios.Close;
  dm_principal.cdsListarFuncionarios.Open;

  dm_principal.cdsAcompanhamento.Close;
  dm_principal.cdsAcompanhamento.Open;
end;

end.
