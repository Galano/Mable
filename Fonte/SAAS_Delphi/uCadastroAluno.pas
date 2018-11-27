unit uCadastroAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroBase,uCadastroCandidato, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxSkinsdxBarPainter, dxBar, cxClasses, ActnList, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, uDM_Principal, ComCtrls,  cxContainer,
  DBClient, cxSpinEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, StdCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Provider, cxPCdxBarPopupMenu, cxPC, Menus, cxCheckBox, ToolWin, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  cxImageComboBox, ppVar, dxGDIPlusClasses;

type
  TfrmCadastroAluno = class(TfrmCadastroCandidato)
    cdsTelaAluno: TClientDataSet;
    dspTelaAluno: TDataSetProvider;
    cdsTelaAlunoPESSOA: TIntegerField;
    cdsTelaAlunoCPF_CNPJ: TStringField;
    cdsTelaAlunoRG: TStringField;
    cdsTelaAlunoEMAIL: TStringField;
    cdsTelaAlunoCANDIDATO: TIntegerField;
    cdsTelaAlunoNOME: TStringField;
    cdsTelaAlunoDATA_CADASTRO: TSQLTimeStampField;
    cdsTelaAlunoMATRICULA: TIntegerField;
    cdsTelaAlunoDATA_MATRICULA: TSQLTimeStampField;
    cdsTelaAlunoTIPO: TStringField;
    cdsTelaAlunoLOCATARIO: TStringField;
    cdsTelaAlunoLOCALIDADE: TIntegerField;
    cdsTelaAlunoUF: TIntegerField;
    cdsTelaAlunoBAIRRO: TStringField;
    cdsTelaAlunoDATA_NASCIMENTO: TSQLTimeStampField;
    vwGridBaseMATRICULA: TcxGridDBColumn;
    vwGridBaseDATA_MATRICULA: TcxGridDBColumn;
    cdsTelaAlunoIDADE: TIntegerField;
    cdsTelaAlunoCEP: TStringField;
    procedure actPesquisarExecute(Sender: TObject);
    procedure CarregarDados(id_pessoa : integer );
    procedure actEditarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure pcControleTelaPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroAluno: TfrmCadastroAluno;

implementation

{$R *.dfm}

procedure TfrmCadastroAluno.actEditarExecute(Sender: TObject);
begin
  inherited;
  CarregarDados( TClientDataSet(dsBase.DataSet).FieldByName('PESSOA').AsInteger);   
  dm_principal.cdsPessoa.Edit;
  dm_principal.cdsCandidato.Edit;
  dm_principal.cdsAluno.Edit;
end;

procedure TfrmCadastroAluno.actNovoExecute(Sender: TObject);
begin
  inherited;
  
  CarregarDados( -1 );

  dm_principal.cdsPessoa.Append;
  dm_principal.cdsCandidato.Append;
  dm_principal.cdsAluno.Append;


  dm_principal.cdsPessoaPESSOA.AsInteger := 0;
  dm_principal.cdsCandidatoCANDIDATO.AsInteger := 0;
  dm_principal.cdsAlunoALUNO.AsInteger := 0;

end;

procedure TfrmCadastroAluno.actPesquisarExecute(Sender: TObject);
begin
  //inherited;
  cdsTelaAluno.Close;
  cdsTelaAluno.Params.ParamByName('MATRICULA').AsInteger := 0;
  cdsTelaAluno.Params.ParamByName('NOME').AsWideString := '';

  case rgTipoConsulta.ItemIndex of
    0 : cdsTelaAluno.Params.ParamByName('NOME').AsWideString := edtConsulta.Text;
    1 : cdsTelaAluno.Params.ParamByName('MATRICULA').AsInteger:=StrToInt('0'+edtConsulta.Text);
  end;

  cdsTelaAluno.Open;
end;

procedure TfrmCadastroAluno.actSalvarExecute(Sender: TObject);
begin
  inherited;
{  try
    dm_principal.cdsPessoa.Post;
    dm_principal.cdsCandidato.Post;
    dm_principal.cdsAluno.Post;

    dm_principal.cdsPessoa.ApplyUpdates(0);
  except on e:exception do begin
    ShowMessage(e.message)
  end;

  end;}
 


end;

procedure TfrmCadastroAluno.CarregarDados(id_pessoa : integer);
begin
  dm_principal.cdsPessoa.close;
  dm_principal.cdsPessoa.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsPessoa.Open;

  dm_principal.cdsCandidato.Close;
  dm_principal.cdsCandidato.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsCandidato.Open;

  dm_principal.cdsAluno.Close;
  dm_principal.cdsAluno.Params.ParamByName('PESSOA').AsInteger := id_pessoa;
  dm_principal.cdsAluno.Open;

end;

procedure TfrmCadastroAluno.pcControleTelaPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  btnGerarMatricula.Visible := ivNever;
end;

end.
