unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxLabel, Vcl.StdCtrls, cxButtons, cxTextEdit,
  uDM_Principal, cxGroupBox;

type
  TfrmLogin = class(TForm)
    gbPrincipal: TcxGroupBox;
    edtUsuario: TcxTextEdit;
    btnLogin: TcxButton;
    Usuário: TcxLabel;
    lblSenha: TcxLabel;
    edtSenha: TEdit;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  DM_Principal.sqlValidaLogin.Close;
  DM_Principal.sqlValidaLogin.Params.ParamByName('USR_LOGIN').AsString :=  edtUsuario.Text;
  DM_Principal.sqlValidaLogin.Params.ParamByName('USR_SENHA').AsString :=  edtSenha.Text;
  DM_Principal.sqlValidaLogin.Open;

  //finalizar controle de permissoes

  if (DM_Principal.sqlValidaLogin.RecordCount = 0)  or (DM_Principal.sqlValidaLoginGRUPOACESSO.IsNull) then
  begin
    ShowMessage('Usuário ou senha inválidos');
    abort;
  end;
  ModalResult := mrOk;
end;

procedure TfrmLogin.cxButton1Click(Sender: TObject);
begin
 Application.Terminate;

end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var
region : hrgn;
begin
  region:= CreateRoundRectRgn(0, 0, width, height, 20, 20);
  setwindowrgn(handle, region, true);
end;

end.
