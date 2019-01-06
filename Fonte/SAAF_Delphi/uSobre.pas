unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, dxGDIPlusClasses;

type
  TfrmSobre = class(TForm)
    OKButton: TButton;
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Comments: TLabel;
    ProgramIcon: TImage;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

end.
