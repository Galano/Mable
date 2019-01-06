unit uCadastroBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ActnList,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, udm_principal,
  dxSkinsdxBarPainter, dxBar, ComCtrls, cxPCdxBarPopupMenu,cxGridExportLink,  cxPC,
  Menus, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  cxContainer, cxGroupBox, ppParameter, ppDesignLayer, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppVar, dxGDIPlusClasses;

const
  ModoPesquisa = 1;
  ModoInclusao = 2;
  ModoEdicao   = 3;
  ModoExclusao = 4;
  ModoSelecao  = 5;


type
  TfrmCadastroBase = class(TForm)
    pnlDadosPesquisa: TCxGroupBox;
    ActionList1: TActionList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actFechar: TAction;
    actPesquisar: TAction;
    dsBase: TDataSource;
    btnPesquisar: TdxBarLargeButton;
    btnFechar: TdxBarLargeButton;
    btnEditar: TdxBarLargeButton;
    btnSalvar: TdxBarLargeButton;
    btnNovo: TdxBarLargeButton;
    btnExcluir: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    actCancelar: TAction;
    dxBarButton1: TdxBarLargeButton;
    pcControleTela: TcxPageControl;
    tsDados: TcxTabSheet;
    tsDetalhe: TcxTabSheet;
    cxGridBase: TcxGrid;
    vwGridBase: TcxGridDBTableView;
    cxGridBaseLevel1: TcxGridLevel;
    ppMenu: TPopupMenu;
    actExportarExcel: TAction;
    ExportarExcel1: TMenuItem;
    dxBarLargeButton1: TdxBarLargeButton;
    ppRelatorioBase: TppReport;
    ppTituloRelatorio: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    btnImprimirRel: TdxBarLargeButton;
    actImprimirRelatorio: TAction;
    ppDbBase: TppDBPipeline;
    ppImage2: TppImage;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExportarExcelExecute(Sender: TObject);
    procedure vwGridBaseCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actImprimirRelatorioExecute(Sender: TObject);
  private
    FPermissaoIncluir : Boolean;
    FPermissaoEditar : Boolean;
    FPermissaoExcluir : Boolean;
    FModoTela : Integer;

    { Private declarations }
  public
    procedure AtualizaModoTela(Status : Integer = 0);
    Property PermissaoIncluir : Boolean read FPermissaoIncluir write FPermissaoIncluir;
    Property PermissaoEditar : Boolean  read FPermissaoIncluir write FPermissaoIncluir;
    Property PermissaoExcluir : Boolean  read FPermissaoIncluir write FPermissaoIncluir;
    Property ModoTela : Integer  read FModoTela write FModoTela;
    { Public declarations }
  end;

var
  frmCadastroBase: TfrmCadastroBase;

implementation

{$R *.dfm}

procedure TfrmCadastroBase.actCancelarExecute(Sender: TObject);
begin  
 //Implementar
AtualizaModoTela(ModoPesquisa);
end;

procedure TfrmCadastroBase.actEditarExecute(Sender: TObject);
begin
  if (not dsBase.DataSet.Active)  or (dsBase.DataSet.RecordCount=0) then
  begin
    ShowMEssage('Dados não encontrados.');
    Abort;
  end
  else
   AtualizaModoTela(ModoEdicao);

 //Implementar
end;

procedure TfrmCadastroBase.actExcluirExecute(Sender: TObject);
begin
 //Implementar
  if (not dsBase.DataSet.Active)  or (dsBase.DataSet.RecordCount=0) then
  begin
    ShowMEssage('Dados não encontrados.');
    Abort;
  end
  else
 AtualizaModoTela(ModoPesquisa);
end;

procedure TfrmCadastroBase.actExportarExcelExecute(Sender: TObject);
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

procedure TfrmCadastroBase.actFecharExecute(Sender: TObject);
begin
  Close;
  Self.Free;
end;

procedure TfrmCadastroBase.actImprimirRelatorioExecute(Sender: TObject);
begin
  ppRelatorioBase.Print;
end;

procedure TfrmCadastroBase.actNovoExecute(Sender: TObject);
begin
 AtualizaModoTela(ModoInclusao);
  
 //Implementar

end;

procedure TfrmCadastroBase.actPesquisarExecute(Sender: TObject);
begin
 //Implementar
 AtualizaModoTela(ModoPesquisa); 
end;

procedure TfrmCadastroBase.actSalvarExecute(Sender: TObject);
begin
 //Implementar
 AtualizaModoTela(ModoPesquisa);

end;

procedure TfrmCadastroBase.AtualizaModoTela(Status : Integer);
begin

  actFechar.Visible     := True;
  actNovo.Enabled       := False;
  actEditar.Enabled     := False;
  actExcluir.Enabled    := False;
  actSalvar.Enabled     := False;
  actFechar.Enabled     := True;
  actCancelar.Enabled   := False;
  actPesquisar.Enabled  := False;
  tsDados.TabVisible    := True;
  ModoTela              := Status;
  tsDetalhe.TabVisible  := True;
  tsDados.TabVisible    := True;
  vwGridBase.OptionsSelection.CellSelect := False;
  vwGridBase.OnCellDblClick := vwGridBaseCellDblClick;
  pnlDadosPesquisa.Visible := False;

  case Status of
      ModoPesquisa :  begin
                        tsDetalhe.TabVisible  := False;
                        pcControleTela.ActivePage := tsDados ;
                        actPesquisar.Enabled  := True;
                        actEditar.Enabled     := True and PermissaoEditar;
                        actExcluir.Enabled    := True and PermissaoExcluir;
                        actNovo.Enabled       := True and PermissaoIncluir;
                        pnlDadosPesquisa.Visible := True;
                      end;
      ModoInclusao :  begin
                        tsDados.TabVisible      := False;
                        pcControleTela.ActivePage := tsDetalhe;
                        actSalvar.Enabled       := True;
                        actCancelar.Enabled     := True;
                        actFechar.Enabled       := False;
                      end;
      ModoEdicao   :  begin
                        tsDados.TabVisible      := False;
                        tsDados.TabVisible    := False;
                        pcControleTela.ActivePage := tsDetalhe;
                        actSalvar.Enabled       := True;
                        actCancelar.Enabled     := True;
                        actFechar.Enabled       := False;
                       end;
      ModoSelecao  :  begin
                        vwGridBase.OnCellDblClick := nil;
                        vwGridBase.OptionsSelection.CellSelect := true;
                        pcControleTela.ActivePage := tsDados ;
                        actSalvar.Enabled       := True;
                        actCancelar.Enabled     := True;
                        actFechar.Enabled       := False;
                       end;
                      
  end;

end;

procedure TfrmCadastroBase.FormCreate(Sender: TObject);
begin
  PermissaoIncluir  := true;
  PermissaoExcluir  := true;
  PermissaoEditar   := true;
end;

procedure TfrmCadastroBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//
end;

procedure TfrmCadastroBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
//
end;

procedure TfrmCadastroBase.FormShow(Sender: TObject);
begin
  pcControleTela.ActivePageIndex := 0;
  AtualizaModoTela(ModoPesquisa);
end;

procedure TfrmCadastroBase.vwGridBaseCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actEditar.Execute;
end;

end.
