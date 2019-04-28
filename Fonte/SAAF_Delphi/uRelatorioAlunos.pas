unit uRelatorioAlunos;

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
  ppBands, ppCache, ppClass, ppDesignLayer, ppParameter, ppComm, ppRelatv,
  ppProd, ppReport, Vcl.Menus, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxGroupBox, uDM_Principal, ppDB, ppDBPipe,
  ppCtrls, ppPrnabl, dxGDIPlusClasses, ppVar;

type
  TfrmRelatorioAlunos = class(TfrmCadastroBase)
    vwGridBaseSEL: TcxGridDBColumn;
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
    vwGridBaseBAIRRO: TcxGridDBColumn;
    vwGridBaseIDADE: TcxGridDBColumn;
    vwGridBaseCEP: TcxGridDBColumn;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    vwGridBaseMATRICULA: TcxGridDBColumn;
    pplblMAtricula: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    procedure actImprimirRelatorioExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure vwGridBaseCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioAlunos: TfrmRelatorioAlunos;

implementation

{$R *.dfm}

procedure TfrmRelatorioAlunos.actImprimirRelatorioExecute(Sender: TObject);
begin
try
  dm_principal.cdsRelatorioAlunos.Close;
  dm_principal.cdsRelatorioAlunos.Open;
  ppRelatorioBase.PrintReport;
  btnImprimirRel.Visible := ivAlways;
finally

end;
  //inherited;

end;

procedure TfrmRelatorioAlunos.actPesquisarExecute(Sender: TObject);
begin
  dsBase.DataSet := dm_principal.cdsRelatorioAlunos;
  dm_principal.cdsRelatorioAlunos.Close;
  dm_principal.cdsRelatorioAlunos.Open;
//  ppRelatorioBase.PrintReport;
   btnImprimirRel.Visible := ivAlways;
   btnImprimirRel.Enabled := dm_principal.cdsRelatorioAlunos.RecordCount > 0 ;

end;

procedure TfrmRelatorioAlunos.FormCreate(Sender: TObject);
begin
  //inherited;
  btnImprimirRel.Visible := ivAlways;
  btnImprimirRel.Enabled := False;
end;

procedure TfrmRelatorioAlunos.FormShow(Sender: TObject);
begin
//  inherited;

end;

procedure TfrmRelatorioAlunos.vwGridBaseCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//  inherited;

end;

end.
