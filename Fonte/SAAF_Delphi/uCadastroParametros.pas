unit uCadastroParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroBase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, Menus,
  dxBar, cxClasses, ActnList, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, uDM_Principal, DBClient, cxContainer, cxCheckBox, cxDBEdit,
  cxTextEdit, StdCtrls, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, System.Actions, ppDB,
  ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, cxGroupBox, ppVar,
  dxGDIPlusClasses;

type
  TfrmCadastroParametros = class(TfrmCadastroBase)
    vwGridBasePARAMETROS: TcxGridDBColumn;
    vwGridBasePARAMETRO: TcxGridDBColumn;
    vwGridBaseVALOR: TcxGridDBColumn;
    vwGridBaseSITUACAO: TcxGridDBColumn;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure actPesquisarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroParametros: TfrmCadastroParametros;

implementation

{$R *.dfm}

procedure TfrmCadastroParametros.actCancelarExecute(Sender: TObject);
begin
  TClientDataSet(dsBase.DataSet).Cancel;
  inherited;

end;

procedure TfrmCadastroParametros.actEditarExecute(Sender: TObject);
begin
  if (TClientDataSet(dsBase.DataSet).FieldByName('PARAMETRO').AsString<>'VersaoSistema')
  and (TClientDataSet(dsBase.DataSet).FieldByName('PARAMETRO').AsString<>'URLAtualizacao')
  and (TClientDataSet(dsBase.DataSet).FieldByName('PARAMETRO').AsString<>'QtdAlunosAtivos') then begin
       TClientDataSet(dsBase.DataSet).Edit ;
       inherited;
 end;


end;

procedure TfrmCadastroParametros.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  TClientDataSet(dsBase.DataSet).Open;
end;

procedure TfrmCadastroParametros.actSalvarExecute(Sender: TObject);
begin
  inherited;
  try
    TClientDataSet(dsBase.DataSet).ApplyUpdates(0);
  except on e:exception do begin
    showmessage(e.message);
  end;

  end;
end;

end.
