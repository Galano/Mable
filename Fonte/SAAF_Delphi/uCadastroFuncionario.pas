unit uCadastroFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppVar, ppBands, ppCtrls,
  dxGDIPlusClasses, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, Vcl.Menus, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxGroupBox, cxDBLookupComboBox, cxMaskEdit,
  cxTextEdit, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, cxCalendar, Vcl.StdCtrls, uDM_Principal, Data.SqlExpr, Datasnap.DBClient,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit;

type
  TfrmCadastroFuncionario = class(TfrmCadastroBase)
    vwGridBasePESSOA: TcxGridDBColumn;
    vwGridBaseCPF_CNPJ: TcxGridDBColumn;
    vwGridBaseRG: TcxGridDBColumn;
    vwGridBaseEMAIL: TcxGridDBColumn;
    vwGridBaseFUNCIONARIO: TcxGridDBColumn;
    vwGridBaseNOME: TcxGridDBColumn;
    vwGridBaseDATA_NASCIMENTO: TcxGridDBColumn;
    vwGridBaseTIPO: TcxGridDBColumn;
    vwGridBaseLOCATARIO: TcxGridDBColumn;
    vwGridBaseLOCALIDADE: TcxGridDBColumn;
    vwGridBaseUF: TcxGridDBColumn;
    vwGridBaseCEP: TcxGridDBColumn;
    vwGridBaseBAIRRO: TcxGridDBColumn;
    vwGridBaseIDADE: TcxGridDBColumn;
    pcDetalheCandidato: TcxPageControl;
    tsFuncionario: TcxTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    tsContatos: TcxTabSheet;
    gridContatos: TcxGrid;
    vwContatos: TcxGridDBTableView;
    vwContatosCONTATO: TcxGridDBColumn;
    vwContatosPESSOA: TcxGridDBColumn;
    vwContatosTIPO: TcxGridDBColumn;
    vwContatosVALOR: TcxGridDBColumn;
    lvlContatos: TcxGridLevel;
    pnlContatosDireito: TPanel;
    ToolBar1: TToolBar;
    btnInsert: TToolButton;
    btnContatoEditar: TToolButton;
    btnContatoExcluir: TToolButton;
    btnContatoSalvar: TToolButton;
    btnContatoCancelar: TToolButton;
    tsEdereco1: TcxTabSheet;
    ToolBar2: TToolBar;
    btnEnderecoNovo: TToolButton;
    btnEnderecoEditar: TToolButton;
    btnEnderecoExcluir: TToolButton;
    btnEnderecoSalvar: TToolButton;
    btnEnderecoCancelar: TToolButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ENDERECO: TcxGridDBColumn;
    cxGridDBTableView1CEP: TcxGridDBColumn;
    cxGridDBTableView1TIPO: TcxGridDBColumn;
    cxGridDBTableView1LOCATARIO: TcxGridDBColumn;
    cxGridDBTableView1BAIRRO: TcxGridDBColumn;
    cxGridDBTableView1UF: TcxGridDBColumn;
    cxGridDBTableView1LOCALIDADE: TcxGridDBColumn;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    actContatoNovo: TAction;
    actContatoEditar: TAction;
    actContatoExcluir: TAction;
    actContatoSalvar: TAction;
    actContatoCancelar: TAction;
    actEnderecoNovo: TAction;
    actEnderecoEditar: TAction;
    actEnderecoExcluir: TAction;
    actEnderecoSalvar: TAction;
    actEnderecoCancelar: TAction;
    tsAcessoSistema: TcxTabSheet;
    Label1: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    Label9: TLabel;
    procedure actNovoExecute(Sender: TObject);
    procedure AtualizaModoTela_Contatos(Status : Integer);
    procedure AtualizaModoTela_Enderecos(Status : Integer);
    function CarregarDados(id_pessoa : integer): Integer;
    procedure actContatoNovoExecute(Sender: TObject);
    procedure actEnderecoNovoExecute(Sender: TObject);
    procedure validaEndereco(tendereco:string);
    procedure AtualizarTela;
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
      fModoBuscar: Boolean;
      fFuncSelecionado : integer;
    { Private declarations }
  public
    property ModoBuscar: boolean read fModoBuscar write fModoBuscar;
    property FuncSelecionado: integer read fFuncSelecionado write fFuncSelecionado;
    { Public declarations }
  end;

var
  frmCadastroFuncionario: TfrmCadastroFuncionario;

implementation

{$R *.dfm}

procedure TfrmCadastroFuncionario.actContatoNovoExecute(Sender: TObject);
begin
  inherited;
  AtualizaModoTela_Contatos(ModoInclusao);
  dm_principal.cdsContato.Append;
end;

procedure TfrmCadastroFuncionario.actEditarExecute(Sender: TObject);
begin
  if not ModoBuscar then
    inherited
  else
  begin
    FuncSelecionado  := dm_principal.cdsTelaFuncionarioFUNCIONARIO.AsInteger;
    close;
    exit;
  end;



  CarregarDados( TClientDataSet(dsBase.DataSet).FieldByName('PESSOA').AsInteger);
  dm_principal.cdsPessoa.Edit ;
  dm_principal.cdsFuncionario.Edit;


//  if dm_principal.cdsEnderecoPessoa.RecordCount = 0 then
//    dm_principal.cdsEnderecoPessoa.Append;

  AtualizaModoTela_Contatos(ModoPesquisa);
  AtualizaModoTela_Enderecos(ModoPesquisa);

  pcDetalheCandidato.ActivePageIndex := 0;
  edtNome.SetFocus;

end;

procedure TfrmCadastroFuncionario.actEnderecoNovoExecute(Sender: TObject);
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

procedure TfrmCadastroFuncionario.actNovoExecute(Sender: TObject);
begin
  inherited;

  AtualizaModoTela_Contatos(ModoPesquisa);
  AtualizaModoTela_Enderecos(ModoPesquisa);


  CarregarDados( -1 );
  dm_principal.cdsPessoa.Append;
  dm_principal.cdsFuncionario.Append;
  dm_principal.cdsUsuarios.Append;

  dm_principal.cdsPessoaPESSOA.AsInteger := 0;

//  dm_principal.cdsFuncionarioFUNCIONARIO.AsInteger := 0;


  pcDetalheCandidato.ActivePageIndex := 0;
end;

procedure TfrmCadastroFuncionario.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  AtualizarTela;
end;

procedure TfrmCadastroFuncionario.actSalvarExecute(Sender: TObject);
var  Trans : TTransactionDesc;
     IdPessoa,IdEndereco, IdAluno, IdFuncionario : Integer;

begin
  inherited;
   {$REGION 'Salvar Funcionario'}
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

          {$REGION 'Funcionario'}
            if dm_principal.cdsFuncionarioPESSOA.AsInteger=0 then
            begin
              dm_principal.cdsFuncionario.Edit;
              dm_principal.cdsFuncionarioPESSOA.AsInteger := IdPessoa;
              dm_principal.cdsFuncionario.Post;

              IdPessoa   := dm_principal.ProximoID('FUNCIONARIO');
            end
            else
              IdFuncionario := dm_principal.cdsFuncionarioFUNCIONARIO.AsInteger;

          dm_principal.cdsFuncionario.ApplyUpdates(0);
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


          {$REGION 'Usuarios'}
            dm_principal.cdsUsuarios.Edit;
            dm_principal.cdsUsuariosFUNCIONARIO.AsInteger := IdFuncionario;
            dm_principal.cdsUsuariosPESSOA.AsInteger := IdPessoa;
            dm_principal.cdsUsuarios.Post;
            dm_principal.cdsUsuarios.ApplyUpdates(0);
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


  inherited;
  ShowMessage('Salvo com sucesso.');

end;

procedure TfrmCadastroFuncionario.AtualizaModoTela_Contatos(Status: Integer);
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

procedure TfrmCadastroFuncionario.AtualizaModoTela_Enderecos(Status: Integer);
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



procedure TfrmCadastroFuncionario.AtualizarTela;
begin
  //  inherited;
  try
  dm_principal.cdsTelaFuncionario.Close;
  dm_principal.cdsTelaFuncionario.Params.ParamByName('NOME').Value       := '';
  dm_principal.cdsTelaFuncionario.Params.ParamByName('PESSOA').AsInteger := -1;
  dm_principal.cdsTelaFuncionario.Open;
  except on e:exception do begin
    showmessage(e.message);
  end;

  end;
end;

function TfrmCadastroFuncionario.CarregarDados(id_pessoa: integer): Integer;
begin
{$REGION 'Carregar Dados'}
  dm_principal.cdsPessoa.close;
  dm_principal.cdsPessoa.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsPessoa.Open;

  dm_principal.cdsFuncionario.Close;
  dm_principal.cdsFuncionario.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsFuncionario.Open;


  dm_principal.cdsEnderecoPessoa.Close;
  dm_principal.cdsEnderecoPessoa.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsEnderecoPessoa.Open;

  dm_principal.cdsEndereco.Close;
  dm_principal.cdsEndereco.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsEndereco.Open;


  dm_principal.cdsContato.Close;
  dm_principal.cdsContato.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsContato.Open;

  dm_principal.cdsUsuarios.Close;
  dm_principal.cdsUsuarios.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsUsuarios.Open;


  dm_principal.cdsTipoEndereco.Close;
  dm_principal.cdsTipoEndereco.Open;


  dm_principal.cdsLocalidade.Close;
  dm_principal.cdsLocalidade.Open;
  dm_principal.cdsUF.Close;
  dm_principal.cdsUF.Open;

  dm_principal.cdsTipoContato.Close;
  dm_principal.cdsTipoContato.Open;

  dm_principal.cdsGrupoAcesso.Open;
{$ENDREGION}
end;

procedure TfrmCadastroFuncionario.FormShow(Sender: TObject);
begin
  inherited;


  if ModoBuscar then
  begin
    btnNovo.Visible := ivNever;
    btnEditar.Visible := ivNever;
    btnExcluir.Visible := ivNever;
    btnSalvar.Visible := ivNever;
    btnCancelar.Visible := ivNever;
    btnImprimirRel.Visible := ivNever;
    pcDetalheCandidato.Visible := false;

  end;
end;

procedure TfrmCadastroFuncionario.validaEndereco(tendereco: string);
begin
   if Trim(tendereco) = '' then
   begin
    MessageDlg('Favor preencher os campos obrigatórios.(*)', mtConfirmation, [mbOK], 0);
    Abort;
   end;
end;

end.
