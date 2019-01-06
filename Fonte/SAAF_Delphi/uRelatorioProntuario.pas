unit uRelatorioProntuario;

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
  cxGridDBTableView, cxGrid, cxPC, uDM_Principal, cxGroupBox, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxTextEdit, ppStrtch, ppSubRpt;

type
  TfrmProntuario = class(TfrmCadastroBase)
    ppLabel3: TppLabel;
    ppDBImage1: TppDBImage;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel9: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText8: TppDBText;
    ppLabel14: TppLabel;
    vwGridBaseNOME: TcxGridDBColumn;
    vwGridBaseRG: TcxGridDBColumn;
    vwGridBaseCPF_CNPJ: TcxGridDBColumn;
    vwGridBaseNIS: TcxGridDBColumn;
    vwGridBaseIDADE: TcxGridDBColumn;
    vwGridBaseNOME_PAI: TcxGridDBColumn;
    vwGridBaseNOME_MAE: TcxGridDBColumn;
    vwGridBaseRESPONSAVEL: TcxGridDBColumn;
    vwGridBasePRONTUARIO: TcxGridDBColumn;
    vwGridBaseEMAIL: TcxGridDBColumn;
    vwGridBaseCANDIDATO: TcxGridDBColumn;
    vwGridBasePESSOA: TcxGridDBColumn;
    vwGridBaseMATRICULA: TcxGridDBColumn;
    ppDBText9: TppDBText;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText15: TppDBText;
    ppLabel32: TppLabel;
    ppLabel36: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBText19: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    edtConsulta: TcxTextEdit;
    rgTipoConsulta: TRadioGroup;
    ppDBText11: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    dsEndereco: TDataSource;
    ppEndereco: TppDBPipeline;
    ppContato: TppDBPipeline;
    dsContato: TDataSource;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel31: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel17: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine2: TppLine;
    procedure FormShow(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure vwGridBaseCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProntuario: TfrmProntuario;

implementation

{$R *.dfm}

procedure TfrmProntuario.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  dm_principal.cdsProntuario.Close;

  case rgTipoConsulta.ItemIndex of
    0 : dm_principal.cdsProntuario.Params.ParamByName('NOME').AsWideString := edtConsulta.Text;
    1 : dm_principal.cdsProntuario.Params.ParamByName('MATRICULA').AsInteger:=StrToInt('0'+edtConsulta.Text);
  end;
  dm_principal.cdsProntuario.Open;

    dm_principal.cdsProntuario_Contato.Close;

  case rgTipoConsulta.ItemIndex of
    0 : dm_principal.cdsProntuario_Contato.Params.ParamByName('NOME').AsWideString := edtConsulta.Text;
    1 : dm_principal.cdsProntuario_Contato.Params.ParamByName('MATRICULA').AsInteger:=StrToInt('0'+edtConsulta.Text);
  end;
  dm_principal.cdsProntuario_Contato.Open;

    dm_principal.cdsProntuario_Endereco.Close;

  case rgTipoConsulta.ItemIndex of
    0 : dm_principal.cdsProntuario_Endereco.Params.ParamByName('NOME').AsWideString := edtConsulta.Text;
    1 : dm_principal.cdsProntuario_Endereco.Params.ParamByName('MATRICULA').AsInteger:=StrToInt('0'+edtConsulta.Text);
  end;
  dm_principal.cdsProntuario_Endereco.Open;
end;

procedure TfrmProntuario.FormShow(Sender: TObject);
begin
  inherited;
  btnImprimirRel.Visible := ivAlways;
  actImprimirRelatorio.Visible := true;

end;

procedure TfrmProntuario.vwGridBaseCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
//  inherited;

end;

end.
