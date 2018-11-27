unit uClasseTestes;
                     
interface


uses TestFramework, uClasseCadastroCandidato, udm_principal;

implementation

type
  TCadastroCandidatoTestes = class(TTestCase)
  private
    FClasseCadastroCandidato: TClasseCadastroCandidato;
  protected
    //procedure SetUp; override;
  published
    procedure TestarCarregarDados;
  end;


{ TNotasTestes }

procedure TCadastroCandidatoTestes.TestarCarregarDados;
begin
//  FClasseCadastroCandidato.CarregarDados(1);
  CheckEquals(1, FClasseCadastroCandidato.Testar);
end;


initialization
  TestFramework.RegisterTest('Tests Suite', TCadastroCandidatoTestes.Suite);

end.
