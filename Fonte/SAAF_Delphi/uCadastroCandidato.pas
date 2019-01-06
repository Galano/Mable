unit uCadastroCandidato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroBase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxSkinsdxBarPainter, dxBar, cxClasses, ActnList, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ComCtrls, ExtCtrls, uDM_Principal, cxContainer, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, StdCtrls, DBXCommon, SqlExpr,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Grids, DBGrids, DBClient,
  uClasseCadastroCandidato, cxPCdxBarPopupMenu, cxPC, Menus, cxCheckBox, ToolWin, DateUtils,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.Actions,
  cxGroupBox, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  cxImageComboBox, ppVar, dxGDIPlusClasses, cxImage, Vcl.DBCtrls, cxButtons,
  cxLabel, cxRadioGroup;

type
  TfrmCadastroCandidato = class(TfrmCadastroBase)
    vwGridBasePESSOA: TcxGridDBColumn;
    vwGridBaseCPF_CNPJ: TcxGridDBColumn;
    vwGridBaseRG: TcxGridDBColumn;
    vwGridBaseEMAIL: TcxGridDBColumn;
    vwGridBaseCANDIDATO: TcxGridDBColumn;
    vwGridBaseNOME: TcxGridDBColumn;
    vwGridBaseDATA_CADASTRO: TcxGridDBColumn;
    vwGridBaseDATA_NASCIMENTO: TcxGridDBColumn;
    vwGridBaseTIPO: TcxGridDBColumn;
    vwGridBaseLOCATARIO: TcxGridDBColumn;
    vwGridBaseLOCALIDADE: TcxGridDBColumn;
    vwGridBaseUF: TcxGridDBColumn;
    vwGridBaseCEP: TcxGridDBColumn;
    vwGridBaseBAIRRO: TcxGridDBColumn;
    rgTipoConsulta: TRadioGroup;
    dxBarButton2: TdxBarButton;
    actGerarMatricula: TAction;
    vwGridBaseIDADE: TcxGridDBColumn;

    vwGridBaseSEL: TcxGridDBColumn;
    pcDetalheCandidato: TcxPageControl;
    tsCandidato: TcxTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    tsContatos: TcxTabSheet;
    gridContatos: TcxGrid;
    vwContatos: TcxGridDBTableView;
    lvlContatos: TcxGridLevel;
    vwContatosCONTATO: TcxGridDBColumn;
    vwContatosPESSOA: TcxGridDBColumn;
    vwContatosTIPO: TcxGridDBColumn;
    pnlContatosDireito: TPanel;
    ToolBar1: TToolBar;
    btnInsert: TToolButton;
    btnContatoExcluir: TToolButton;
    btnContatoEditar: TToolButton;
    actContatoNovo: TAction;
    actContatoEditar: TAction;
    actContatoExcluir: TAction;
    btnContatoSalvar: TToolButton;
    actContatoSalvar: TAction;
    btnContatoCancelar: TToolButton;
    actContatoCancelar: TAction;
    tsEdereco1: TcxTabSheet;
    ToolBar2: TToolBar;
    btnEnderecoNovo: TToolButton;
    btnEnderecoEditar: TToolButton;
    btnEnderecoExcluir: TToolButton;
    btnEnderecoSalvar: TToolButton;
    btnEnderecoCancelar: TToolButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ENDERECO: TcxGridDBColumn;
    cxGridDBTableView1TIPO: TcxGridDBColumn;
    cxGridDBTableView1LOCATARIO: TcxGridDBColumn;
    cxGridDBTableView1LOCALIDADE: TcxGridDBColumn;
    cxGridDBTableView1UF: TcxGridDBColumn;
    cxGridDBTableView1CEP: TcxGridDBColumn;
    cxGridDBTableView1BAIRRO: TcxGridDBColumn;
    actEnderecoNovo: TAction;
    actEnderecoEditar: TAction;
    actEnderecoExcluir: TAction;
    actEnderecoSalvar: TAction;
    actEnderecoCancelar: TAction;

    actNecessidadeNovo: TAction;
    actNecessidadeEditar: TAction;
    actNecessidadeExcluir: TAction;
    actNecessidadeSalvar: TAction;
    actNecessidadeCancelar: TAction;
    cxDBMaskEdit1: TcxDBMaskEdit;
    vwContatosVALOR: TcxGridDBColumn;
    dxBarManager1Bar2: TdxBar;
    btnGerarMatricula: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label5: TLabel;
    Label9: TLabel;
    tsNecessidades: TcxTabSheet;
    edtConsulta: TcxTextEdit;
    cbGenero: TcxDBImageComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    Label11: TLabel;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppVariable1: TppVariable;
    ppLabel6: TppLabel;
    gridNecessidades: TcxGrid;
    vwNecessidades: TcxGridDBTableView;
    lvlNecessidades: TcxGridLevel;
    ToolBar3: TToolBar;
    btnNecessidadeNovo: TToolButton;
    btnNecessidadeEditar: TToolButton;
    ToolButton3: TToolButton;
    btnNecessidadeSalvar: TToolButton;
    ToolButton5: TToolButton;
    vwNecessidadesCANDIDATO_NECESSIDADE: TcxGridDBColumn;
    vwNecessidadesNECESSIDADE: TcxGridDBColumn;
    vwNecessidadesCANDIDATO: TcxGridDBColumn;
    edtResponsavel: TcxDBTextEdit;
    lblResponsavel: TLabel;
    edtParentesco: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label13: TLabel;
    edtImage: TcxDBImage;
    tsProntuario: TcxTabSheet;
    DBMemo1: TDBMemo;
    btnCarregarFoto: TcxButton;
    btnLimparFoto: TcxButton;
    SaveDialog1: TSaveDialog;
    cxDBTextEdit8: TcxDBTextEdit;
    Label14: TLabel;
    tsMedico: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    rgFrequentaEscola: TcxDBRadioGroup;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label16: TLabel;
    Label17: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxDBRadioGroup6: TcxDBRadioGroup;
    Label23: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    Label24: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    Label25: TLabel;
    cxGroupBox5: TcxGroupBox;
    Label18: TLabel;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox6: TcxGroupBox;
    cxDBRadioGroup7: TcxDBRadioGroup;
    cxDBRadioGroup8: TcxDBRadioGroup;
    cxGroupBox4: TcxGroupBox;
    Label21: TLabel;
    cxDBRadioGroup5: TcxDBRadioGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label22: TLabel;
    cxDBRadioGroup4: TcxDBRadioGroup;
    cxDBTextEdit16: TcxDBTextEdit;
    cxGroupBox7: TcxGroupBox;
    Label19: TLabel;
    cxDBRadioGroup9: TcxDBRadioGroup;
    cxDBTextEdit13: TcxDBTextEdit;
    cxGroupBox11: TcxGroupBox;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox12: TcxGroupBox;
    Label20: TLabel;
    cxDBRadioGroup13: TcxDBRadioGroup;
    cxDBTextEdit14: TcxDBTextEdit;
    cxGroupBox13: TcxGroupBox;
    Label26: TLabel;
    cxDBRadioGroup14: TcxDBRadioGroup;
    cxDBTextEdit20: TcxDBTextEdit;
    cxGroupBox14: TcxGroupBox;
    Label27: TLabel;
    cxDBRadioGroup15: TcxDBRadioGroup;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    Label29: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    Label28: TLabel;
    Label30: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    Label31: TLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    Label32: TLabel;
    btnMarcarTodos: TMenuItem;
    GroupBox1: TGroupBox;
    cxGroupBox9: TcxGroupBox;
    cxDBRadioGroup11: TcxDBRadioGroup;
    cxGroupBox8: TcxGroupBox;
    cxDBRadioGroup10: TcxDBRadioGroup;
    cxGroupBox10: TcxGroupBox;
    cxDBRadioGroup12: TcxDBRadioGroup;
    cxGroupBox15: TcxGroupBox;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    actAvancar: TAction;
    actVoltar: TAction;
    procedure actPesquisarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure pcControleTelaPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure actGerarMatriculaExecute(Sender: TObject);
    procedure actContatoNovoExecute(Sender: TObject);
    procedure actContatoEditarExecute(Sender: TObject);
    procedure actContatoExcluirExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure actContatoSalvarExecute(Sender: TObject);
    procedure actContatoCancelarExecute(Sender: TObject);
    procedure actEnderecoNovoExecute(Sender: TObject);
    procedure vwGridBaseSELPropertiesEditValueChanged(Sender: TObject);
    procedure cxDBMaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit3Exit(Sender: TObject);
    procedure cxDBMaskEdit1Exit(Sender: TObject);
    procedure cxDBDateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBDateEdit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actNecessidadeNovoExecute(Sender: TObject);
    procedure gridContatosExit(Sender: TObject);
    procedure vwContatosFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure vwNecessidadesFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnCarregarFotoClick(Sender: TObject);
    procedure btnLimparFotoClick(Sender: TObject);
    procedure btnMarcarTodosClick(Sender: TObject);
    procedure Detalhe_MudarAba(Voltar : boolean);
    procedure actVoltarExecute(Sender: TObject);
    procedure actAvancarExecute(Sender: TObject);

  private
    QtdSelecionado : Integer;
    GerandoMatricula : boolean;
    function CarregarDados(id_pessoa : integer): Integer;
    procedure AtualizaModoTela_Contatos(Status : Integer);
    procedure AtualizaModoTela_Enderecos(Status : Integer);
    procedure AtualizaModoTela_Necessidades(Status : Integer);
    procedure AtualizarTela;
    procedure validaEndereco(tendereco:string);
    procedure validaCampos();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCandidato: TfrmCadastroCandidato;
  ClasseCadastroCandidato : TClasseCadastroCandidato;

implementation

{$R *.dfm}

procedure TfrmCadastroCandidato.actAvancarExecute(Sender: TObject);
begin
  inherited;
  Detalhe_MudarAba(False);
end;

procedure TfrmCadastroCandidato.actCancelarExecute(Sender: TObject);
begin
  inherited;
  GerandoMatricula := False;
  dm_principal.cdsPessoa.Cancel;
  dm_principal.cdsCandidato.Cancel;

  dm_principal.cdsPessoa.Close;
  dm_principal.cdsCandidato.Close;

  AtualizarTela;

  vwGridBaseSEL.Visible := False;

    actGerarMatricula.Enabled := True;

end;

procedure TfrmCadastroCandidato.actContatoCancelarExecute(Sender: TObject);
begin
  inherited;
  AtualizaModoTela_Contatos(ModoPesquisa);
  if dm_principal.cdsContato.State<> dsBrowse then
    dm_principal.cdsContato.Cancel;
end;

procedure TfrmCadastroCandidato.actContatoEditarExecute(Sender: TObject);
begin
  inherited;
  AtualizaModoTela_Contatos(ModoEdicao);
  dm_principal.cdsContato.Edit;
end;

procedure TfrmCadastroCandidato.actContatoExcluirExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja excluir o contato?',mtWarning,[mbYes,mbNo],1) =mrYes then
  begin
    AtualizaModoTela_Contatos(ModoPesquisa);
    dm_principal.cdsContato.Delete;
  end;
end;

procedure TfrmCadastroCandidato.actContatoNovoExecute(Sender: TObject);
begin
  inherited;
  AtualizaModoTela_Contatos(ModoInclusao);
  dm_principal.cdsContato.Append;
end;

procedure TfrmCadastroCandidato.actContatoSalvarExecute(Sender: TObject);
begin
  inherited;
//  dm_principal.cdsContatoVALOR.post;
//  if dm_principal.cdsContatoVALOR.AsString = '' then
//    exit;

  AtualizaModoTela_Contatos(ModoPesquisa);
  dm_principal.cdsContato.Post;
end;

procedure TfrmCadastroCandidato.actEditarExecute(Sender: TObject);
begin
  inherited;
  CarregarDados( TClientDataSet(dsBase.DataSet).FieldByName('PESSOA').AsInteger);
  dm_principal.cdsPessoa.Edit ;
  dm_principal.cdsCandidato.Edit;
  dm_principal.cdsCandidato_Prontuario.Edit;


//  if dm_principal.cdsEnderecoPessoa.RecordCount = 0 then
//    dm_principal.cdsEnderecoPessoa.Append;

  AtualizaModoTela_Contatos(ModoPesquisa);
  AtualizaModoTela_Enderecos(ModoPesquisa);
  AtualizaModoTela_Necessidades(ModoPesquisa);
  pcDetalheCandidato.ActivePageIndex := 0;
  edtNome.SetFocus;


end;

procedure TfrmCadastroCandidato.actEnderecoNovoExecute(Sender: TObject);
begin
  inherited;
   if Sender = actEnderecoNovo then begin
      dm_principal.cdsEndereco.Append;
      AtualizaModoTela_Enderecos(ModoInclusao);
   end
   else if Sender = actEnderecoEditar then begin
      dm_principal.cdsEndereco.Edit;
      AtualizaModoTela_Enderecos(ModoEdicao);
   end
   else if Sender = actEnderecoExcluir then begin
      dm_principal.cdsEndereco.Delete;
      AtualizaModoTela_Enderecos(ModoPesquisa);
   end
   else if Sender = actEnderecoCancelar then begin
      dm_principal.cdsEndereco.Cancel;
      AtualizaModoTela_Enderecos(ModoPesquisa);
   end
   else if Sender = actEnderecoSalvar then begin
      dm_principal.cdsEndereco.Post ;
      validaEndereco(dm_principal.cdsEnderecoTIPO.AsString);
      validaEndereco(dm_principal.cdsEnderecoLOCATARIO.AsString);
      validaEndereco(dm_principal.cdsEnderecoBAIRRO.AsString);
      validaEndereco(dm_principal.cdsEnderecoUF.AsString);
      validaEndereco(dm_principal.cdsEnderecoLOCALIDADE.AsString);
      AtualizaModoTela_Enderecos(ModoPesquisa);
   end;
   //cxGrid1.SetFocus;
end;

procedure TfrmCadastroCandidato.actExcluirExecute(Sender: TObject);
begin
  inherited;
  CarregarDados( TClientDataSet(dsBase.DataSet).FieldByName('PESSOA').AsInteger);
  if MessageDlg('O candidato(a) "'+ TClientDataSet(dsBase.DataSet).FieldByName('NOME').AsString +'" será excluido permanentemente, deseja continuar?',mtWarning,[mbYes,mbNo],1) =mrYes then
  begin
    dm_principal.cdsPessoa.Delete;
    dm_principal.cdsPessoa.ApplyUpdates(0);
    dm_principal.cdsPessoa.close;
    AtualizarTela;
  end;


end;

procedure TfrmCadastroCandidato.actGerarMatriculaExecute(Sender: TObject);
begin
  GerandoMatricula := True;
  QtdSelecionado := 0;
  inherited;
  AtualizaModoTela(ModoSelecao);
  vwGridBaseSEL.Visible := true;

  dm_principal.cdsAluno.Close;
  dm_principal.cdsAluno.Open;
  actGerarMatricula.Enabled := False;
  btnMarcarTodos.Enabled := True;
end;

procedure TfrmCadastroCandidato.actNecessidadeNovoExecute(Sender: TObject);
begin
  inherited;

  //dm_principal.cdsNecessidadeCandidato.Filtered := False;
   if Sender = actNecessidadeNovo then begin
      dm_principal.cdsNecessidadeCandidato.Append;
      AtualizaModoTela_Necessidades(ModoInclusao);
   end
   else if Sender = actNecessidadeEditar then begin
      //dm_principal.cdsNecessidadeCandidato.Filter := 'CANDIDATO_NECESSIDADE = ' + IntToStr(dm_principal.cdsNecessidadeCandidatoCANDIDATO_NECESSIDADE.AsInteger );
      //dm_principal.cdsNecessidadeCandidato.Filtered := True;
      dm_principal.cdsNecessidadeCandidato.Edit;
      AtualizaModoTela_Necessidades(ModoEdicao);
   end
   else if Sender = actNecessidadeExcluir then begin
      dm_principal.cdsNecessidadeCandidato.Delete;
      AtualizaModoTela_Necessidades(ModoPesquisa);
   end
   else if Sender = actNecessidadeCancelar then begin
      dm_principal.cdsNecessidadeCandidato.Cancel;
      AtualizaModoTela_Necessidades(ModoPesquisa);
   end
   else if Sender = actNecessidadeSalvar then begin
      if dm_principal.cdsNecessidadeCandidatoNECESSIDADE.IsNull then
        exit;

      dm_principal.cdsNecessidadeCandidato.Post ;
      AtualizaModoTela_Necessidades(ModoPesquisa);
   end;

end;

procedure TfrmCadastroCandidato.actNovoExecute(Sender: TObject);
begin
  inherited;

  AtualizaModoTela_Contatos(ModoPesquisa);
  AtualizaModoTela_Enderecos(ModoPesquisa);
  AtualizaModoTela_Necessidades(ModoPesquisa);

  CarregarDados( -1 );
  dm_principal.cdsPessoa.Append;
  dm_principal.cdsCandidato.Append;
  dm_principal.cdsPessoaPESSOA.AsInteger := 0;
  dm_principal.cdsCandidatoCANDIDATO.AsInteger := 0;
  dm_principal.cdsCandidatoDATA_CADASTRO.AsDateTime := now;
  dm_principal.cdsCandidato_Prontuario.Append;
  dm_principal.cdsCandidato_ProntuarioCANDIDATO.AsInteger := 0;
  dm_principal.cdsCandidato_ProntuarioDATA_REF.AsDateTime := now;

  pcDetalheCandidato.ActivePageIndex := 0;

end;

procedure TfrmCadastroCandidato.actPesquisarExecute(Sender: TObject);
begin
  AtualizarTela;
end;

procedure TfrmCadastroCandidato.actSalvarExecute(Sender: TObject);
var  Trans : TTransactionDesc;
     IdPessoa,IdEndereco, IdAluno, IdCandidato : Integer;
begin
   if not GerandoMatricula then
     validaCampos();

    if (GerandoMatricula )
    and ((DM_Principal.QtdAlunosAtivos+QtdSelecionado) > DM_Principal.QtdVagas) then
    begin
      ShowMessage('Atenção, quantidade de candidatos selecionados superior a quantidade de vagas.(Total Selecionado: '+IntToStr(QtdSelecionado)+' )');
      abort;
    end;

    GerandoMatricula := False;

    if ModoTela = ModoSelecao then
    begin
        {$REGION 'Gerar Matricula'}
       // dm_principal.conSAAS1.StartTransaction(Trans);

        dm_principal.cdsTelaCandidato.First;
        while not dm_principal.cdsTelaCandidato.Eof do
        begin
           IF dm_principal.cdsTelaCandidatoSEL.AsInteger = 1 then
           begin
              //IdAluno := dm_principal.ProximoID('ALUNO');
              IdAluno := dm_principal.cdsTelaCandidatoCANDIDATO.AsInteger;
              dm_principal.cdsAluno.Append;
              dm_principal.cdsAlunoCANDIDATO.AsInteger := dm_principal.cdsTelaCandidatoCANDIDATO.AsInteger;
              dm_principal.cdsAlunoMATRICULA.AsInteger :=  (StrToInt(FormatDateTime('yyyy', Now))*1000000)  + IdAluno ;
              dm_principal.cdsAlunoDATA_MATRICULA.AsDateTime := Now;
              dm_principal.cdsAlunoSITUACAO.AsInteger :=  1;            
              dm_principal.cdsAluno.Post;
           end;

        dm_principal.cdsTelaCandidato.Next;
        end;
        dm_principal.cdsAluno.ApplyUpdates(0);




        //dm_principal.conSAAS1.Commit(Trans );
        AtualizarTela;
        {$ENDREGION}
    end
    else
    begin
        {$REGION 'Salvar Candidato'}
        try
          dm_principal.conSAAS1.StartTransaction;
          {$REGION 'Capturar IDs'}
          if dm_principal.cdsPessoaPESSOA.AsInteger>0     then
            IdPessoa   := dm_principal.cdsPessoaPESSOA.AsInteger
          else
            IdPessoa   := dm_principal.ProximoID('PESSOA');
          {$ENDREGION}

          {$REGION 'Pessoa'}
            if dm_principal.cdsPessoaPESSOA.AsInteger=0 then
            begin
              dm_principal.cdsPessoa.edit;
              dm_principal.cdsPessoaPESSOA.AsInteger := IdPessoa;
              dm_principal.cdsPessoa.Post;
            end;
            dm_principal.cdsPessoa.ApplyUpdates(0);
          {$ENDREGION}

          {$REGION 'Candidato'}
            if dm_principal.cdsCandidatoPESSOA.AsInteger=0 then
            begin
              dm_principal.cdsCandidato.Edit;
              dm_principal.cdsCandidatoPESSOA.AsInteger := IdPessoa;
              dm_principal.cdsCandidato.Post;

              IdCandidato   := dm_principal.ProximoID('CANDIDATO');
            end
            else
              IdCandidato := dm_principal.cdsCandidatoCANDIDATO.AsInteger;

          dm_principal.cdsCandidato.ApplyUpdates(0);
          {$ENDREGION}



          {$REGION 'Prontuario'}
            if dm_principal.cdsCandidato_ProntuarioCANDIDATO.AsInteger=0 then
            begin
              dm_principal.cdsCandidato_Prontuario.Edit;
              dm_principal.cdsCandidato_ProntuarioCANDIDATO.AsInteger := IdCandidato;
              dm_principal.cdsCandidato_Prontuario.Post;
            end;

            dm_principal.cdsCandidato_Prontuario.ApplyUpdates(0);
          {$ENDREGION}


          {$REGION 'Endereco'}
          dm_principal.cdsEndereco.First;
          IdEndereco := dm_principal.ProximoID('ENDERECO');
          while not dm_principal.cdsEndereco.Eof do
          begin

            if dm_principal.cdsEnderecoLOCATARIO.AsString='' then begin
              dm_principal.cdsEndereco.Edit;
              dm_principal.cdsEnderecoLOCATARIO.AsString := 'SEM ENDERECO';
              dm_principal.cdsEndereco.Post;
            end;

            {$REGION 'EnderecoPessoa'}
              dm_principal.cdsEnderecoPessoa.First;
              if (not (dm_principal.cdsEnderecoPessoa.Locate('ENDERECO',IdEndereco,[loCaseInsensitive])))
                 and (dm_principal.cdsEnderecoENDERECO.AsInteger=0 )
              then
              begin
                dm_principal.cdsEnderecoPessoa.Append;
                dm_principal.cdsEnderecoPessoaENDERECO.AsInteger := IdEndereco;
                dm_principal.cdsEnderecoPessoaPESSOA.AsInteger   := IdPessoa;
                dm_principal.cdsEnderecoPessoa.Post;
                IdEndereco := IdEndereco+1;
              end;
            {$ENDREGION}

          dm_principal.cdsEndereco.Next;

          end;
          dm_principal.cdsEndereco.ApplyUpdates(0);
          dm_principal.cdsEnderecoPessoa.ApplyUpdates(0);
          {$ENDREGION}

          {$REGION 'Contato'}
            dm_principal.cdsContato.First;
            while not dm_principal.cdsContato.Eof do begin
              dm_principal.cdsContato.Edit;
              dm_principal.cdsContatoPESSOA.AsInteger := IdPessoa;
              dm_principal.cdsContato.Post;
            dm_principal.cdsContato.Next;
            end;
            dm_principal.cdsContato.ApplyUpdates(0);
          {$ENDREGION}

          {$REGION 'Necessidade'}
            dm_principal.cdsNecessidadeCandidato.First;
            while not dm_principal.cdsNecessidadeCandidato.Eof do begin
              dm_principal.cdsNecessidadeCandidato.Edit;
              dm_principal.cdsNecessidadeCandidatoCANDIDATO.AsInteger := IdCandidato;
              dm_principal.cdsNecessidadeCandidato.Post;
            dm_principal.cdsNecessidadeCandidato.Next;
            end;
            dm_principal.cdsNecessidadeCandidato.ApplyUpdates(0);
          {$ENDREGION}


          dm_principal.conSAAS1.Commit;

          AtualizarTela;
        except on e:exception do begin
          dm_principal.conSAAS1.Rollback;
          showmessage(e.message);
          exit;
        end;

        end;
        {$ENDREGION}
    end;


    inherited;
    actGerarMatricula.Enabled := True;
    btnMarcarTodos.Enabled := False;
    ShowMessage('Salvo com sucesso.');
end;


procedure TfrmCadastroCandidato.actVoltarExecute(Sender: TObject);
begin
  inherited;
  Detalhe_MudarAba(true);
end;

function TfrmCadastroCandidato.CarregarDados(id_pessoa : integer): Integer;
begin
{$REGION 'Carregar Dados'}
  dm_principal.cdsPessoa.close;
  dm_principal.cdsPessoa.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsPessoa.Open;

  dm_principal.cdsCandidato.Close;
  dm_principal.cdsCandidato.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsCandidato.Open;


  dm_principal.cdsEnderecoPessoa.Close;
  dm_principal.cdsEnderecoPessoa.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsEnderecoPessoa.Open;

  dm_principal.cdsEndereco.Close;
  dm_principal.cdsEndereco.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsEndereco.Open;


  dm_principal.cdsContato.Close;
  dm_principal.cdsContato.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsContato.Open;

  dm_principal.cdsNecessidadeCandidato.Close;
  dm_principal.cdsNecessidadeCandidato.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsNecessidadeCandidato.Open;


  dm_principal.cdsCandidato_Prontuario.Close;
  dm_principal.cdsCandidato_Prontuario.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsCandidato_Prontuario.Open;


  dm_principal.cdsTipoEndereco.Close;
  dm_principal.cdsTipoEndereco.Open;


  dm_principal.cdsNecessidade.Close;
  dm_principal.cdsNecessidade.Open;


  dm_principal.cdsLocalidade.Close;
  dm_principal.cdsLocalidade.Open;
  dm_principal.cdsUF.Close;
  dm_principal.cdsUF.Open;

  dm_principal.cdsTipoContato.Close;
  dm_principal.cdsTipoContato.Open;
{$ENDREGION}
end;

procedure TfrmCadastroCandidato.cxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['1','2','3','4','5','6','7','8','9','0']) then
    key :=#0;
end;

procedure TfrmCadastroCandidato.cxDBDateEdit2Exit(Sender: TObject);
var DtMin, DtMax : TDatetime;
begin
  DtMin := IncYear(Now,-50);
  DtMax := IncYear(Now,-5);

  if (TcxDBDateEdit(sender).Date<DtMin)
  or (TcxDBDateEdit(sender).Date>now )
  then
  begin
     ShowMessage('Data inválida');
     TcxDBDateEdit(Sender).SetFocus;
     exit;
  end;

  if (TcxDBDateEdit(sender).Date>DtMax)
  then
  begin
     ShowMessage('Idade mínima 5 anos.');
     TcxDBDateEdit(Sender).SetFocus;
  end;



end;

procedure TfrmCadastroCandidato.cxDBDateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['1','2','3','4','5','6','7','8','9','0']) then
    key :=#0;
end;

procedure TfrmCadastroCandidato.cxDBMaskEdit1Exit(Sender: TObject);
var sCPF : String;
begin
  inherited;
  if TcxDBMaskEdit(Sender).text='   .   .   -  ' then exit;

  sCPF := StringReplace( TcxDBMaskEdit(Sender).text, '.','',[rfreplaceall]);
  sCPF := StringReplace( sCPF, '-','',[rfreplaceall]);
   if not dm_principal.isCPF(   sCPF ) then
   begin
     ShowMessage('CPF inválido');
     TcxDBTextEdit(Sender).SetFocus;
   end;
end;

procedure TfrmCadastroCandidato.cxDBMaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['1','2','3','4','5','6','7','8','9','0']) then
    key :=#0;
end;

procedure TfrmCadastroCandidato.cxDBTextEdit3Exit(Sender: TObject);
  function ValidarEMail(aStr: string): Boolean;
  begin
   aStr := Trim(UpperCase(aStr));
   if (Pos('@', aStr) > 1 ) and (aStr <> null)then
   begin
     Delete(aStr, 1, pos('@', aStr));
     Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
   end
   else
     Result := False; 
  end;

begin
  inherited;

   if not ValidarEMail( TcxDBTextEdit(Sender).text) then
   begin
     ShowMessage('Email inválido');
     TcxDBTextEdit(Sender).SetFocus;
   end;


end;

procedure TfrmCadastroCandidato.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if dm_principal.dsEndereco.State = dsBrowse then
    AtualizaModoTela_Enderecos(ModoPesquisa);
end;

procedure TfrmCadastroCandidato.Detalhe_MudarAba(Voltar: boolean);
begin

   if Voltar then
     pcDetalheCandidato.ActivePageIndex := pcDetalheCandidato.ActivePageIndex-1
   else
     pcDetalheCandidato.ActivePageIndex := pcDetalheCandidato.ActivePageIndex+1;


   btnVoltar.Enabled := pcDetalheCandidato.ActivePageIndex > 0;
   btnAvancar.Enabled := pcDetalheCandidato.ActivePageIndex < pcDetalheCandidato.PageCount-1;

end;

procedure TfrmCadastroCandidato.FormCreate(Sender: TObject);
begin
  inherited;
  GerandoMatricula := False;
end;

procedure TfrmCadastroCandidato.gridContatosExit(Sender: TObject);
begin
  //inherited;
  if  dm_principal.cdsContato.State<>dsBrowse  then
  begin
    ShowMEssage('Necessário concluir edição.');
    gridContatos.SetFocus;
  end;

end;

procedure TfrmCadastroCandidato.pcControleTelaPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  actGerarMatricula.Visible := NewPage=tsDados;

end;

procedure TfrmCadastroCandidato.ToolButton1Click(Sender: TObject);
begin
  inherited;
  dm_principal.cdsEndereco.Post;
end;

procedure TfrmCadastroCandidato.validaCampos;
begin
   if Trim(edtNome.Text)='' then
    begin
      Showmessage('Informe o Nome.');
      edtNome.SetFocus;
      Abort;
    end;

    if Trim(cxDBDateEdit2.Text)='' then
    begin
      Showmessage('Informe a data de nascimento.');
      cxDBDateEdit2.SetFocus;
      Abort;
    end;

   If Trim (cxDBMaskEdit1.Text)='' Then
    Begin
      Showmessage('Informe o CPF.');
      cxDBMaskEdit1.SetFocus;
      Abort;
    end ;

   If Trim (cxDBTextEdit2.Text)='' Then
    Begin
      Showmessage('Informe o RG.');
      cxDBTextEdit2.SetFocus;
      Abort;
    end;
   If Trim (cxDBTextEdit3.Text)='' Then
    Begin
      Showmessage('Informe o email.');
      cxDBTextEdit3.SetFocus;
      Abort;
    end;
//   If (dm_principal.cdsContato.Active) and (dm_principal.cdsContato.RecordCount = 0) Then
//    Begin
//      Showmessage('Informe um telefone para contato.');
//      pcDetalheCandidato.ActivePageIndex := 1;
//      Abort;
///    end
end;

procedure TfrmCadastroCandidato.validaEndereco(tendereco: string);
begin
   if Trim(tendereco) = '' then
   begin
    MessageDlg('Favor preencher os campos obrigatórios.(*)', mtConfirmation, [mbOK], 0);
    Abort;
   end;
end;

procedure TfrmCadastroCandidato.vwContatosFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if dm_principal.dsContato.State=dsBrowse  then
     AtualizaModoTela_Contatos(ModoPesquisa);

end;

procedure TfrmCadastroCandidato.vwGridBaseSELPropertiesEditValueChanged(
  Sender: TObject);
begin
  IF dm_principal.cdsTelaCandidatoSEL.AsInteger = 1 then
    QtdSelecionado := QtdSelecionado+1
  else if QtdSelecionado>0 then
    QtdSelecionado := QtdSelecionado-1;
    
  inherited;
end;

procedure TfrmCadastroCandidato.vwNecessidadesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if dm_principal.dsNecessidadeCandidato.State = dsBrowse  then
    AtualizaModoTela_Necessidades(ModoPesquisa);
    
end;

procedure TfrmCadastroCandidato.AtualizaModoTela_Contatos(Status: Integer);
begin
  actContatoNovo.Enabled       := False;
  actContatoEditar.Enabled     := False;
  actContatoExcluir.Enabled    := False;
  actContatoSalvar.Enabled     := False;
  actContatoCancelar.Enabled   := False;
  //tsDados.TabVisible    := True;
  ModoTela              := Status;
  case Status of
      ModoPesquisa :  begin
                        actContatoEditar.Enabled     := True and PermissaoEditar;
                        actContatoExcluir.Enabled    := True and PermissaoExcluir;
                        actContatoNovo.Enabled       := True and PermissaoIncluir;
                      end;
      ModoInclusao :  begin
                        actContatoSalvar.Enabled       := True;
                        actContatoCancelar.Enabled     := True;
                      end;
      ModoEdicao   :  begin
                        actContatoSalvar.Enabled       := True;
                        actContatoCancelar.Enabled     := True;
                       end;
      ModoSelecao  :  begin
                        actContatoSalvar.Enabled       := True;
                        actContatoCancelar.Enabled     := True;
                       end;

  end;

  actContatoNovo.Visible       := actContatoNovo.Enabled;
  actContatoEditar.Visible     := actContatoEditar.Enabled;
  actContatoExcluir.Visible    := actContatoExcluir.Enabled;
  actContatoSalvar.Visible     := actContatoSalvar.Enabled;
  actContatoCancelar.Visible   := actContatoSalvar.Enabled;

end;

procedure TfrmCadastroCandidato.AtualizaModoTela_Enderecos(Status: Integer);
begin
  actEnderecoNovo.Enabled       := False;
  actEnderecoEditar.Enabled     := False;
  actEnderecoExcluir.Enabled    := False;
  actEnderecoSalvar.Enabled     := False;
  actEnderecoCancelar.Enabled   := False;
  //tsDados.TabVisible    := True;
  ModoTela              := Status;
  case Status of
      ModoPesquisa :  begin
                        actEnderecoEditar.Enabled     := True and PermissaoEditar;
                        actEnderecoExcluir.Enabled    := True and PermissaoExcluir;
                        actEnderecoNovo.Enabled       := True and PermissaoIncluir;
                      end;
      ModoInclusao :  begin
                        actEnderecoSalvar.Enabled       := True;
                        actEnderecoCancelar.Enabled     := True;
                      end;
      ModoEdicao   :  begin
                        actEnderecoSalvar.Enabled       := True;
                        actEnderecoCancelar.Enabled     := True;
                       end;
      ModoSelecao  :  begin
                        actEnderecoSalvar.Enabled       := True;
                        actEnderecoCancelar.Enabled     := True;
                       end;

  end;


  actEnderecoNovo.Visible       := actEnderecoNovo.Enabled;
  actEnderecoEditar.Visible     := actEnderecoEditar.Enabled;
  actEnderecoExcluir.Visible    := actEnderecoExcluir.Enabled;
  actEnderecoSalvar.Visible     := actEnderecoSalvar.Enabled;
  actEnderecoCancelar.Visible   := actEnderecoCancelar.Enabled;
end;

procedure TfrmCadastroCandidato.AtualizaModoTela_Necessidades(Status: Integer);
begin
  actNecessidadeNovo.Enabled       := False;
  actNecessidadeEditar.Enabled     := False;
  actNecessidadeExcluir.Enabled    := False;
  actNecessidadeSalvar.Enabled     := False;
  actNecessidadeCancelar.Enabled   := False;
  vwNecessidades.OptionsData.Editing := False;
  //tsDados.TabVisible    := True;
  ModoTela              := Status;
  case Status of
      ModoPesquisa :  begin
                        actNecessidadeEditar.Enabled     := True and PermissaoEditar;
                        actNecessidadeExcluir.Enabled    := True and PermissaoExcluir;
                        actNecessidadeNovo.Enabled       := True and PermissaoIncluir;
                      end;
      ModoInclusao :  begin
                        actNecessidadeSalvar.Enabled       := True;
                        actNecessidadeCancelar.Enabled     := True;
                      end;
      ModoEdicao   :  begin
                        actNecessidadeSalvar.Enabled       := True;
                        actNecessidadeCancelar.Enabled     := True;
                       end;
      ModoSelecao  :  begin
                        actNecessidadeSalvar.Enabled       := True;
                        actNecessidadeCancelar.Enabled     := True;
                       end;

  end;


  actNecessidadeNovo.Visible       := actNecessidadeNovo.Enabled;
  actNecessidadeEditar.Visible     := actNecessidadeEditar.Enabled;
  actNecessidadeExcluir.Visible    := actNecessidadeExcluir.Enabled;
  actNecessidadeSalvar.Visible     := actNecessidadeSalvar.Enabled;
  actNecessidadeCancelar.Visible   := actNecessidadeCancelar.Enabled;
  vwNecessidades.OptionsData.Editing := actNecessidadeSalvar.Visible;
end;

procedure TfrmCadastroCandidato.AtualizarTela;
begin
  //  inherited;
  try
  dm_principal.cdsTelaCandidato.Close;
  dm_principal.cdsTelaCandidato.Params.ParamByName('NOME').Value        := edtConsulta.Text;
  dm_principal.cdsTelaCandidato.Params.ParamByName('PESSOA').AsInteger  := -1;
  dm_principal.cdsTelaCandidato.Open;
  except on e:exception do begin
    showmessage(e.message);
  end;

  end;
end;

procedure TfrmCadastroCandidato.btnCarregarFotoClick(Sender: TObject);
begin
  inherited;
  edtImage.LoadFromFile;
end;

procedure TfrmCadastroCandidato.btnLimparFotoClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja limpar a foto?',mtWarning,[mbYes,mbNo],1) =mrYes then
    edtImage.Clear;
end;

procedure TfrmCadastroCandidato.btnMarcarTodosClick(Sender: TObject);
begin
  inherited;
  if btnMarcarTodos.Tag=0 then btnMarcarTodos.Tag := 1 else btnMarcarTodos.Tag := 0;

  TClientDataSet(dsBase.DataSet).First;
  while NOT TClientDataSet(dsBase.DataSet).EOF do
  begin
    TClientDataSet(dsBase.DataSet).Edit;
    TClientDataSet(dsBase.DataSet).FieldByName('SEL').AsInteger := btnMarcarTodos.Tag;
    TClientDataSet(dsBase.DataSet).post;
  TClientDataSet(dsBase.DataSet).Next;
  end;

end;

end.
