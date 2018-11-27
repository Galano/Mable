unit uClasseCadastroCandidato;

interface
   
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroBase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxSkinsdxBarPainter, dxBar, cxClasses, ActnList, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, uDM_Principal, ComCtrls,  cxContainer,
  DBClient, cxSpinEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, StdCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Provider;


type
  TclasseCadastroCandidato = class
  private

  public
    function Testar : integer;

end;

implementation

{ TclasseCadastroCandidato }


function TclasseCadastroCandidato.Testar: integer;
begin
   Result := 1; 
end;

end.
