unit uRelatorioCandidatos;

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
  cxGridDBTableView, cxGrid, cxPC, cxGroupBox, uDM_Principal;

type
  TfrmRelatorioCandidatos = class(TfrmCadastroBase)
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
    vwGridBaseMATRICULA: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioCandidatos: TfrmRelatorioCandidatos;

implementation

{$R *.dfm}

end.
