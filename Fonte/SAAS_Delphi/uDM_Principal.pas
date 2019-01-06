unit uDM_Principal;

interface

uses
  SysUtils, Classes, DB, DBClient, Provider, ADODB, ImgList, Controls, cxStyles,
  cxGridTableView, cxClasses, WideStrings, FMTBcd, SqlExpr, Variants, ExtCtrls,
  ComCtrls, Dialogs, StdCtrls, UrlMon, Windows, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, cxImageList, cxGraphics, HTTPApp, ACBrBase, ACBrSocket,
  Inifiles, ACBrCEP, Vcl.Forms, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
   IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdMessage;

type
  TEndereco = class
  private
    { private declarations }
  public
    Tipo, Cidade, Estado, Logradouro, Bairro: String;
    { public declarations }
  published
    { published declarations }

  end;

type
  Tdm_principal = class(TDataModule)
    stlrPadrao: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    gtvAzul: TcxGridTableViewStyleSheet;
    gtvVerde: TcxGridTableViewStyleSheet;
    imgBotoesHot: TImageList;
    imgBotoesDisabled: TImageList;
    imgBotoesNormal: TImageList;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    dspLocalidade: TDataSetProvider;
    cdsLocalidade: TClientDataSet;
    dsLocalidade: TDataSource;
    dspPessoa: TDataSetProvider;
    dsPessoa: TDataSource;
    cdsLocalidadeLOCALIDADE: TAutoIncField;
    cdsLocalidadeUF: TIntegerField;
    cdsLocalidadeNOME_LOCALIDADE: TStringField;
    dspCandidato: TDataSetProvider;
    cdsCandidato: TClientDataSet;
    dsCandidato: TDataSource;
    dspAluno: TDataSetProvider;
    cdsAluno: TClientDataSet;
    dsAluno: TDataSource;
    cdsUFUF: TAutoIncField;
    cdsUFNOME_UF: TStringField;
    cdsUFSIGLA: TStringField;
    cdsPessoa: TClientDataSet;
    cdsCandidatoCANDIDATO: TIntegerField;
    cdsCandidatoPESSOA: TIntegerField;
    cdsCandidatoNOME: TStringField;
    cdsCandidatoDATA_CADASTRO: TSQLTimeStampField;
    cdsAlunoALUNO: TIntegerField;
    cdsAlunoCANDIDATO: TIntegerField;
    cdsAlunoMATRICULA: TIntegerField;
    cdsAlunoDATA_MATRICULA: TSQLTimeStampField;
    cdsCandidatoDATA_NASCIMENTO: TSQLTimeStampField;
    cdsPessoaPESSOA: TIntegerField;
    cdsPessoaCPF_CNPJ: TStringField;
    cdsPessoaEMAIL: TStringField;
    cdsPessoaRG: TStringField;
    dspEndereco: TDataSetProvider;
    cdsEndereco: TClientDataSet;
    dsEndereco: TDataSource;
    cdsEnderecoENDERECO: TIntegerField;
    cdsEnderecoTIPO: TStringField;
    cdsEnderecoLOCATARIO: TStringField;
    cdsEnderecoLOCALIDADE: TIntegerField;
    cdsEnderecoUF: TIntegerField;
    cdsEnderecoBAIRRO: TStringField;
    dspEnderecoPessoa: TDataSetProvider;
    cdsEnderecoPessoa: TClientDataSet;
    dsEnderecoPessoa: TDataSource;
    cdsEnderecoPessoaENDERECOPESSOA: TIntegerField;
    cdsEnderecoPessoaENDERECO: TIntegerField;
    cdsEnderecoPessoaPESSOA: TIntegerField;
    dspTipoEndereco: TDataSetProvider;
    cdsTipoEndereco: TClientDataSet;
    dsTipoEndereco: TDataSource;
    cdsTipoEnderecoTIPO: TIntegerField;
    cdsTipoEnderecoDESCRICAO: TStringField;
    dspContato: TDataSetProvider;
    cdsContato: TClientDataSet;
    dsContato: TDataSource;
    cdsContatoCONTATO: TIntegerField;
    cdsContatoPESSOA: TIntegerField;
    cdsContatoTIPO: TIntegerField;
    cdsContatoVALOR: TStringField;
    dspTipoContato: TDataSetProvider;
    cdsTipoContato: TClientDataSet;
    dsTipoContato: TDataSource;
    cdsTipoContatoTIPO: TIntegerField;
    cdsTipoContatoDESCRICAO: TStringField;
    cdsAlunoSITUACAO: TIntegerField;
    cdsEnderecoCEP: TStringField;
    IdHTTP1: TIdHTTP;
    dspAcompanhamento: TDataSetProvider;
    cdsAcompanhamento: TClientDataSet;
    dsAcompanhamento: TDataSource;
    cdsAcompanhamentoACOMPANHAMENTO: TIntegerField;
    cdsAcompanhamentoALUNO: TIntegerField;
    cdsAcompanhamentoFUNCIONARIO: TIntegerField;
    cdsAcompanhamentoDATA: TSQLTimeStampField;
    cdsAcompanhamentoOBSERVACOES: TStringField;
    cdsAcompanhamentoNOME: TStringField;
    dspListarAlunos: TDataSetProvider;
    cdsListarAlunos: TClientDataSet;
    dsListarAlunos: TDataSource;
    cdsListarAlunosMATRICULA: TIntegerField;
    cdsListarAlunosNOME: TStringField;
    cdsListarAlunosALUNO: TIntegerField;
    conSAAS1: TFDConnection;
    sqlUF: TFDQuery;
    sqlUFUF: TIntegerField;
    sqlUFNOME_UF: TStringField;
    sqlUFSIGLA: TStringField;
    sqlLocalidade: TFDQuery;
    sqlLocalidadeLOCALIDADE: TIntegerField;
    sqlLocalidadeUF: TIntegerField;
    sqlLocalidadeNOME_LOCALIDADE: TStringField;
    sqlPessoa: TFDQuery;
    sqlPessoaPESSOA: TIntegerField;
    sqlPessoaCPF_CNPJ: TStringField;
    sqlPessoaEMAIL: TStringField;
    sqlPessoaRG: TStringField;
    sqlCandidato: TFDQuery;
    sqlCandidatoCANDIDATO: TIntegerField;
    sqlCandidatoPESSOA: TIntegerField;
    sqlCandidatoNOME: TStringField;
    sqlCandidatoDATA_CADASTRO: TSQLTimeStampField;
    sqlCandidatoDATA_NASCIMENTO: TSQLTimeStampField;
    sqlAluno: TFDQuery;
    sqlAlunoALUNO: TIntegerField;
    sqlAlunoCANDIDATO: TIntegerField;
    sqlAlunoMATRICULA: TIntegerField;
    sqlAlunoDATA_MATRICULA: TSQLTimeStampField;
    sqlAlunoSITUACAO: TIntegerField;
    sqlEndereco: TFDQuery;
    sqlEnderecoENDERECO: TIntegerField;
    sqlEnderecoTIPO: TStringField;
    sqlEnderecoLOCATARIO: TStringField;
    sqlEnderecoLOCALIDADE: TIntegerField;
    sqlEnderecoUF: TIntegerField;
    sqlEnderecoBAIRRO: TStringField;
    sqlEnderecoCEP: TStringField;
    sqlEnderecoPessoa: TFDQuery;
    sqlEnderecoPessoaENDERECOPESSOA: TIntegerField;
    sqlEnderecoPessoaENDERECO: TIntegerField;
    sqlEnderecoPessoaPESSOA: TIntegerField;
    sqlTipoEndereco: TFDQuery;
    sqlTipoEnderecoTIPO: TIntegerField;
    sqlTipoEnderecoDESCRICAO: TStringField;
    sqlContato: TFDQuery;
    sqlContatoCONTATO: TIntegerField;
    sqlContatoPESSOA: TIntegerField;
    sqlContatoTIPO: TIntegerField;
    sqlContatoVALOR: TStringField;
    sqlTipoContato: TFDQuery;
    sqlTipoContatoTIPO: TIntegerField;
    sqlTipoContatoDESCRICAO: TStringField;
    sqlAcompanhamento: TFDQuery;
    sqlAcompanhamentoACOMPANHAMENTO: TIntegerField;
    sqlAcompanhamentoALUNO: TIntegerField;
    sqlAcompanhamentoFUNCIONARIO: TIntegerField;
    sqlAcompanhamentoDATA: TSQLTimeStampField;
    sqlAcompanhamentoOBSERVACOES: TStringField;
    sqlAcompanhamentoNOME: TStringField;
    sqlListarAlunos: TFDQuery;
    sqlListarAlunosMATRICULA: TIntegerField;
    sqlListarAlunosNOME: TStringField;
    sqlListarAlunosALUNO: TIntegerField;
    sqlTelaAluno: TFDQuery;
    sqlTelaAlunoPESSOA: TIntegerField;
    sqlTelaAlunoCPF_CNPJ: TStringField;
    sqlTelaAlunoRG: TStringField;
    sqlTelaAlunoEMAIL: TStringField;
    sqlTelaAlunoCANDIDATO: TIntegerField;
    sqlTelaAlunoNOME: TStringField;
    sqlTelaAlunoDATA_CADASTRO: TSQLTimeStampField;
    sqlTelaAlunoMATRICULA: TIntegerField;
    sqlTelaAlunoDATA_MATRICULA: TSQLTimeStampField;
    sqlTelaAlunoTIPO: TStringField;
    sqlTelaAlunoLOCATARIO: TStringField;
    sqlTelaAlunoLOCALIDADE: TIntegerField;
    sqlTelaAlunoUF: TIntegerField;
    sqlTelaAlunoBAIRRO: TStringField;
    sqlTelaAlunoDATA_NASCIMENTO: TSQLTimeStampField;
    sqlTelaAlunoIDADE: TIntegerField;
    sqlTelaAlunoCEP: TStringField;
    sqlTelaCandidato: TFDQuery;
    sqlTelaCandidatoSEL: TIntegerField;
    sqlTelaCandidatoPESSOA: TIntegerField;
    sqlTelaCandidatoCPF_CNPJ: TStringField;
    sqlTelaCandidatoRG: TStringField;
    sqlTelaCandidatoEMAIL: TStringField;
    sqlTelaCandidatoCANDIDATO: TIntegerField;
    sqlTelaCandidatoNOME: TStringField;
    sqlTelaCandidatoDATA_CADASTRO: TSQLTimeStampField;
    sqlTelaCandidatoDATA_NASCIMENTO: TSQLTimeStampField;
    sqlTelaCandidatoTIPO: TStringField;
    sqlTelaCandidatoLOCATARIO: TStringField;
    sqlTelaCandidatoLOCALIDADE: TIntegerField;
    sqlTelaCandidatoUF: TIntegerField;
    sqlTelaCandidatoBAIRRO: TStringField;
    sqlTelaCandidatoIDADE: TIntegerField;
    sqlTelaCandidatoCEP: TStringField;
    dspTelaCandidato: TDataSetProvider;
    cdsTelaCandidato: TClientDataSet;
    cdsTelaCandidatoSEL: TIntegerField;
    cdsTelaCandidatoPESSOA: TIntegerField;
    cdsTelaCandidatoCPF_CNPJ: TStringField;
    cdsTelaCandidatoRG: TStringField;
    cdsTelaCandidatoEMAIL: TStringField;
    cdsTelaCandidatoCANDIDATO: TIntegerField;
    cdsTelaCandidatoNOME: TStringField;
    cdsTelaCandidatoDATA_CADASTRO: TSQLTimeStampField;
    cdsTelaCandidatoDATA_NASCIMENTO: TSQLTimeStampField;
    cdsTelaCandidatoTIPO: TStringField;
    cdsTelaCandidatoLOCATARIO: TStringField;
    cdsTelaCandidatoLOCALIDADE: TIntegerField;
    cdsTelaCandidatoUF: TIntegerField;
    cdsTelaCandidatoBAIRRO: TStringField;
    cdsTelaCandidatoIDADE: TIntegerField;
    cdsTelaCandidatoCEP: TStringField;
    sqlProximoID: TFDQuery;
    dspProximoID: TDataSetProvider;
    cdsProximoID: TClientDataSet;
    dsTelaCandidato: TDataSource;
    sqlParametros: TFDQuery;
    sqlParametrosPARAMETROS: TIntegerField;
    sqlParametrosPARAMETRO: TStringField;
    sqlParametrosVALOR: TStringField;
    sqlParametrosSITUACAO: TIntegerField;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    cdsParametrosPARAMETROS: TIntegerField;
    cdsParametrosPARAMETRO: TStringField;
    cdsParametrosVALOR: TStringField;
    cdsParametrosSITUACAO: TIntegerField;
    sqlProximoIDPROX_ID: TIntegerField;
    cdsProximoIDPROX_ID: TIntegerField;
    sqlRelatorioAlunos: TFDQuery;
    dspRelatorioAlunos: TDataSetProvider;
    cdsRelatorioAlunos: TClientDataSet;
    sqlRelatorioAlunosSEL: TIntegerField;
    sqlRelatorioAlunosPESSOA: TFDAutoIncField;
    sqlRelatorioAlunosCPF_CNPJ: TStringField;
    sqlRelatorioAlunosRG: TStringField;
    sqlRelatorioAlunosEMAIL: TStringField;
    sqlRelatorioAlunosCANDIDATO: TFDAutoIncField;
    sqlRelatorioAlunosNOME: TStringField;
    sqlRelatorioAlunosDATA_CADASTRO: TSQLTimeStampField;
    sqlRelatorioAlunosDATA_NASCIMENTO: TSQLTimeStampField;
    sqlRelatorioAlunosTIPO: TStringField;
    sqlRelatorioAlunosLOCATARIO: TStringField;
    sqlRelatorioAlunosLOCALIDADE: TIntegerField;
    sqlRelatorioAlunosUF: TIntegerField;
    sqlRelatorioAlunosCEP: TStringField;
    sqlRelatorioAlunosBAIRRO: TStringField;
    sqlRelatorioAlunosIDADE: TIntegerField;
    cdsRelatorioAlunosSEL: TIntegerField;
    cdsRelatorioAlunosPESSOA: TIntegerField;
    cdsRelatorioAlunosCPF_CNPJ: TStringField;
    cdsRelatorioAlunosRG: TStringField;
    cdsRelatorioAlunosEMAIL: TStringField;
    cdsRelatorioAlunosCANDIDATO: TIntegerField;
    cdsRelatorioAlunosNOME: TStringField;
    cdsRelatorioAlunosDATA_CADASTRO: TSQLTimeStampField;
    cdsRelatorioAlunosDATA_NASCIMENTO: TSQLTimeStampField;
    cdsRelatorioAlunosTIPO: TStringField;
    cdsRelatorioAlunosLOCATARIO: TStringField;
    cdsRelatorioAlunosLOCALIDADE: TIntegerField;
    cdsRelatorioAlunosUF: TIntegerField;
    cdsRelatorioAlunosBAIRRO: TStringField;
    cdsRelatorioAlunosIDADE: TIntegerField;
    cdsRelatorioAlunosCEP: TStringField;
    ImgBotoesCX: TcxImageList;
    sqlProximosRetornos: TFDQuery;
    dspProximosRetornos: TDataSetProvider;
    cdsProximosRetornos: TClientDataSet;
    sqlProximosRetornosNOME: TStringField;
    sqlProximosRetornosMATRICULA: TIntegerField;
    sqlProximosRetornosIDADE: TIntegerField;
    sqlProximosRetornosOBSERVACOES: TStringField;
    sqlProximosRetornosDATARETORNO: TSQLTimeStampField;
    cdsProximosRetornosNOME: TStringField;
    cdsProximosRetornosMATRICULA: TIntegerField;
    cdsProximosRetornosIDADE: TIntegerField;
    cdsProximosRetornosOBSERVACOES: TStringField;
    cdsProximosRetornosDATARETORNO: TSQLTimeStampField;
    dsProximosRetornos: TDataSource;
    sqlAcompanhamentoDATARETORNO: TSQLTimeStampField;
    cdsAcompanhamentoDATARETORNO: TSQLTimeStampField;
    sqlCandidatoNOME_PAI: TStringField;
    sqlCandidatoNOME_MAE: TStringField;
    sqlCandidatoETINIA: TIntegerField;
    sqlCandidatoGENERO: TIntegerField;
    cdsCandidatoNOME_PAI: TStringField;
    cdsCandidatoNOME_MAE: TStringField;
    cdsCandidatoETINIA: TIntegerField;
    cdsCandidatoGENERO: TIntegerField;
    sqlEnderecoNUMERO: TStringField;
    cdsEnderecoNUMERO: TStringField;
    ACBrCEP1: TACBrCEP;
    sqlRelatorioAlunosMATRICULA: TIntegerField;
    cdsRelatorioAlunosMATRICULA: TIntegerField;
    sqlRelatorioCandidatos: TFDQuery;
    dspRelatorioCandidatos: TDataSetProvider;
    cdsRelatorioCandidatos: TClientDataSet;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField8: TIntegerField;
    StringField12: TStringField;
    SQLTimeStampField3: TSQLTimeStampField;
    SQLTimeStampField4: TSQLTimeStampField;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField15: TStringField;
    IntegerField11: TIntegerField;
    StringField16: TStringField;
    IntegerField12: TIntegerField;
    sqlTelaFuncionario: TFDQuery;
    dspTelaFuncionario: TDataSetProvider;
    cdsTelaFuncionario: TClientDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sqlFuncionario: TFDQuery;
    sqlFuncionarioFUNCIONARIO: TFDAutoIncField;
    sqlFuncionarioPESSOA: TIntegerField;
    sqlFuncionarioADMISSAO: TSQLTimeStampField;
    sqlFuncionarioDEMISSAO: TSQLTimeStampField;
    sqlFuncionarioPROFISSAO: TIntegerField;
    sqlFuncionarioNOME: TStringField;
    sqlFuncionarioDTNASCIMENTO: TSQLTimeStampField;
    cdsFuncionarioFUNCIONARIO: TAutoIncField;
    cdsFuncionarioPESSOA: TIntegerField;
    cdsFuncionarioADMISSAO: TSQLTimeStampField;
    cdsFuncionarioDEMISSAO: TSQLTimeStampField;
    cdsFuncionarioPROFISSAO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    cdsFuncionarioDTNASCIMENTO: TSQLTimeStampField;
    sqlTelaFuncionarioSEL: TIntegerField;
    sqlTelaFuncionarioPESSOA: TFDAutoIncField;
    sqlTelaFuncionarioCPF_CNPJ: TStringField;
    sqlTelaFuncionarioRG: TStringField;
    sqlTelaFuncionarioEMAIL: TStringField;
    sqlTelaFuncionarioFUNCIONARIO: TFDAutoIncField;
    sqlTelaFuncionarioNOME: TStringField;
    sqlTelaFuncionarioDATA_NASCIMENTO: TSQLTimeStampField;
    sqlTelaFuncionarioTIPO: TStringField;
    sqlTelaFuncionarioLOCATARIO: TStringField;
    sqlTelaFuncionarioLOCALIDADE: TIntegerField;
    sqlTelaFuncionarioUF: TIntegerField;
    sqlTelaFuncionarioCEP: TStringField;
    sqlTelaFuncionarioBAIRRO: TStringField;
    sqlTelaFuncionarioIDADE: TIntegerField;
    cdsTelaFuncionarioSEL: TIntegerField;
    cdsTelaFuncionarioPESSOA: TAutoIncField;
    cdsTelaFuncionarioCPF_CNPJ: TStringField;
    cdsTelaFuncionarioRG: TStringField;
    cdsTelaFuncionarioEMAIL: TStringField;
    cdsTelaFuncionarioFUNCIONARIO: TAutoIncField;
    cdsTelaFuncionarioNOME: TStringField;
    cdsTelaFuncionarioDATA_NASCIMENTO: TSQLTimeStampField;
    cdsTelaFuncionarioTIPO: TStringField;
    cdsTelaFuncionarioLOCATARIO: TStringField;
    cdsTelaFuncionarioLOCALIDADE: TIntegerField;
    cdsTelaFuncionarioUF: TIntegerField;
    cdsTelaFuncionarioCEP: TStringField;
    cdsTelaFuncionarioBAIRRO: TStringField;
    cdsTelaFuncionarioIDADE: TIntegerField;
    dspNecessidade: TDataSetProvider;
    cdsNecessidade: TClientDataSet;
    dsNecessidade: TDataSource;
    sqlNecessidade: TFDQuery;
    sqlNecessidadeNECESSIDADE: TFDAutoIncField;
    sqlNecessidadeDESCRICAO: TStringField;
    sqlNecessidadeATIVA: TIntegerField;
    cdsNecessidadeNECESSIDADE: TAutoIncField;
    cdsNecessidadeDESCRICAO: TStringField;
    cdsNecessidadeATIVA: TIntegerField;
    dspNecessidadeCandidato: TDataSetProvider;
    cdsNecessidadeCandidato: TClientDataSet;
    dsNecessidadeCandidato: TDataSource;
    sqlNecessidadeCandidato: TFDQuery;
    sqlNecessidadeCandidatoCANDIDATO_NECESSIDADE: TFDAutoIncField;
    sqlNecessidadeCandidatoNECESSIDADE: TIntegerField;
    sqlNecessidadeCandidatoCANDIDATO: TIntegerField;
    cdsNecessidadeCandidatoCANDIDATO_NECESSIDADE: TAutoIncField;
    cdsNecessidadeCandidatoNECESSIDADE: TIntegerField;
    cdsNecessidadeCandidatoCANDIDATO: TIntegerField;
    sqlCandidatoPARENTESCO: TStringField;
    sqlCandidatoENCAMINHADO: TStringField;
    sqlCandidatoPROCEDENCIA: TStringField;
    sqlCandidatoFOTO: TBlobField;
    cdsCandidatoPARENTESCO: TStringField;
    cdsCandidatoENCAMINHADO: TStringField;
    cdsCandidatoPROCEDENCIA: TStringField;
    cdsCandidatoFOTO: TBlobField;
    sqlCandidatoRESPONSAVEL: TStringField;
    cdsCandidatoRESPONSAVEL: TStringField;
    sqlCandidatoPRONTUARIO: TMemoField;
    cdsCandidatoPRONTUARIO: TMemoField;
    sqlCandidatoNIS: TStringField;
    cdsCandidatoNIS: TStringField;
    dspProntuario: TDataSetProvider;
    cdsProntuario: TClientDataSet;
    dsProntuario: TDataSource;
    sqlProntuario: TFDQuery;
    sqlProntuarioNOME: TStringField;
    sqlProntuarioRG: TStringField;
    sqlProntuarioCPF_CNPJ: TStringField;
    sqlProntuarioNIS: TStringField;
    sqlProntuarioIDADE: TBCDField;
    sqlProntuarioNOME_PAI: TStringField;
    sqlProntuarioNOME_MAE: TStringField;
    sqlProntuarioRESPONSAVEL: TStringField;
    sqlProntuarioPRONTUARIO: TMemoField;
    sqlProntuarioEMAIL: TStringField;
    sqlProntuarioCANDIDATO: TFDAutoIncField;
    sqlProntuarioPESSOA: TIntegerField;
    sqlProntuarioFOTO: TBlobField;
    sqlProntuarioMATRICULA: TIntegerField;
    cdsProntuarioNOME: TStringField;
    cdsProntuarioRG: TStringField;
    cdsProntuarioCPF_CNPJ: TStringField;
    cdsProntuarioNIS: TStringField;
    cdsProntuarioIDADE: TBCDField;
    cdsProntuarioNOME_PAI: TStringField;
    cdsProntuarioNOME_MAE: TStringField;
    cdsProntuarioRESPONSAVEL: TStringField;
    cdsProntuarioPRONTUARIO: TMemoField;
    cdsProntuarioEMAIL: TStringField;
    cdsProntuarioCANDIDATO: TAutoIncField;
    cdsProntuarioPESSOA: TIntegerField;
    cdsProntuarioFOTO: TBlobField;
    cdsProntuarioMATRICULA: TIntegerField;
    dspCandidato_Prontuario: TDataSetProvider;
    cdsCandidato_Prontuario: TClientDataSet;
    dsCandidato_Prontuario: TDataSource;
    sqlCandidato_Prontuario: TFDQuery;
    sqlCandidato_ProntuarioPRONTUARIO: TFDAutoIncField;
    sqlCandidato_ProntuarioCANDIDATO: TIntegerField;
    sqlCandidato_ProntuarioFAZUSODEMEDICAMENTOS: TIntegerField;
    sqlCandidato_ProntuarioFAZUSODEMEDICAMENTOS_QUAL: TStringField;
    sqlCandidato_ProntuarioALERGICOALGUMMEDICAMENTO: TIntegerField;
    sqlCandidato_ProntuarioALERGICOALGUMMEDICAMENTO_QUAL: TStringField;
    sqlCandidato_ProntuarioPOSSUIBILHETEESPECIALTRANSPORTE: TIntegerField;
    sqlCandidato_ProntuarioPOSSUIBILHETEESPECIALTRANSPORTE_QUAL: TStringField;
    sqlCandidato_ProntuarioRECEBEPROGRAMATRANSFERENCIARENDA: TIntegerField;
    sqlCandidato_ProntuarioRECEBEPROGRAMATRANSFERENCIARENDA_QUAL: TStringField;
    sqlCandidato_ProntuarioAUTORIZADOIREMBORASOZINHO: TIntegerField;
    sqlCandidato_ProntuarioAUTORIZADOSERFILMADOFOTOGRAFADO: TIntegerField;
    sqlCandidato_ProntuarioAUTORIZADOPARTICIPARATIVIDADESEXTERNAS: TIntegerField;
    sqlCandidato_ProntuarioCOMPARECERDIARIAMENTE: TIntegerField;
    sqlCandidato_ProntuarioPERIODOADAPTACO: TStringField;
    sqlCandidato_ProntuarioDIASINDICADOSFREQUENCIA: TStringField;
    sqlCandidato_ProntuarioPODERAALMOCARORGANIZACO: TIntegerField;
    sqlCandidato_ProntuarioPODERAALMOCARORGANIZACO_MOTIVO: TStringField;
    sqlCandidato_ProntuarioALERGICORESTRICOALGUMALIMENTO: TIntegerField;
    sqlCandidato_ProntuarioALERGICORESTRICOALGUMALIMENTO_QUAL: TStringField;
    sqlCandidato_ProntuarioDATA_REF: TSQLTimeStampField;
    cdsCandidato_ProntuarioPRONTUARIO: TAutoIncField;
    cdsCandidato_ProntuarioCANDIDATO: TIntegerField;
    cdsCandidato_ProntuarioFAZUSODEMEDICAMENTOS: TIntegerField;
    cdsCandidato_ProntuarioFAZUSODEMEDICAMENTOS_QUAL: TStringField;
    cdsCandidato_ProntuarioALERGICOALGUMMEDICAMENTO: TIntegerField;
    cdsCandidato_ProntuarioALERGICOALGUMMEDICAMENTO_QUAL: TStringField;
    cdsCandidato_ProntuarioPOSSUIBILHETEESPECIALTRANSPORTE: TIntegerField;
    cdsCandidato_ProntuarioPOSSUIBILHETEESPECIALTRANSPORTE_QUAL: TStringField;
    cdsCandidato_ProntuarioRECEBEPROGRAMATRANSFERENCIARENDA: TIntegerField;
    cdsCandidato_ProntuarioRECEBEPROGRAMATRANSFERENCIARENDA_QUAL: TStringField;
    cdsCandidato_ProntuarioAUTORIZADOIREMBORASOZINHO: TIntegerField;
    cdsCandidato_ProntuarioAUTORIZADOSERFILMADOFOTOGRAFADO: TIntegerField;
    cdsCandidato_ProntuarioAUTORIZADOPARTICIPARATIVIDADESEXTERNAS: TIntegerField;
    cdsCandidato_ProntuarioCOMPARECERDIARIAMENTE: TIntegerField;
    cdsCandidato_ProntuarioPERIODOADAPTACO: TStringField;
    cdsCandidato_ProntuarioDIASINDICADOSFREQUENCIA: TStringField;
    cdsCandidato_ProntuarioPODERAALMOCARORGANIZACO: TIntegerField;
    cdsCandidato_ProntuarioPODERAALMOCARORGANIZACO_MOTIVO: TStringField;
    cdsCandidato_ProntuarioALERGICORESTRICOALGUMALIMENTO: TIntegerField;
    cdsCandidato_ProntuarioALERGICORESTRICOALGUMALIMENTO_QUAL: TStringField;
    cdsCandidato_ProntuarioDATA_REF: TSQLTimeStampField;
    sqlCandidatoPAI_NASCIMENTO: TSQLTimeStampField;
    sqlCandidatoMAE_NASCIMENTO: TSQLTimeStampField;
    sqlCandidatoRESPONSAVEL_NASCIMENTO: TSQLTimeStampField;
    sqlCandidatoPROFISSAO: TStringField;
    sqlCandidatoESCOLARIDADE: TStringField;
    cdsCandidatoPAI_NASCIMENTO: TSQLTimeStampField;
    cdsCandidatoMAE_NASCIMENTO: TSQLTimeStampField;
    cdsCandidatoRESPONSAVEL_NASCIMENTO: TSQLTimeStampField;
    cdsCandidatoPROFISSAO: TStringField;
    cdsCandidatoESCOLARIDADE: TStringField;
    sqlProntuarioFAZUSODEMEDICAMENTOS_SIM: TStringField;
    sqlProntuarioFAZUSODEMEDICAMENTOS_NAO: TStringField;
    sqlProntuarioFAZUSODEMEDICAMENTOS_QUAL: TStringField;
    sqlProntuarioALERGICOALGUMMEDICAMENTO_SIM: TStringField;
    sqlProntuarioALERGICOALGUMMEDICAMENTO_NAO: TStringField;
    sqlProntuarioALERGICOALGUMMEDICAMENTO_QUAL: TStringField;
    sqlProntuarioPOSSUIBILHETEESPECIALTRANSPORTE_SIM: TStringField;
    sqlProntuarioPOSSUIBILHETEESPECIALTRANSPORTE_NAO: TStringField;
    sqlProntuarioPOSSUIBILHETEESPECIALTRANSPORTE_QUAL: TStringField;
    sqlProntuarioRECEBEPROGRAMATRANSFERENCIARENDA_SIM: TStringField;
    sqlProntuarioRECEBEPROGRAMATRANSFERENCIARENDA_NAO: TStringField;
    sqlProntuarioAUTORIZADOIREMBORASOZINHO_SIM: TStringField;
    sqlProntuarioAUTORIZADOIREMBORASOZINHO_NAO: TStringField;
    sqlProntuarioAUTORIZADOSERFILMADOFOTOGRAFADO_SIM: TStringField;
    sqlProntuarioAUTORIZADOSERFILMADOFOTOGRAFADO_NAO: TStringField;
    sqlProntuarioAUTORIZADOPARTICIPARATIVIDADESEXTERNAS_SIM: TStringField;
    sqlProntuarioAUTORIZADOPARTICIPARATIVIDADESEXTERNAS_NAO: TStringField;
    sqlProntuarioCOMPARECERDIARIAMENTE_SIM: TStringField;
    sqlProntuarioCOMPARECERDIARIAMENTE_NAO: TStringField;
    sqlProntuarioPERIODOADAPTACO: TStringField;
    sqlProntuarioDIASINDICADOSFREQUENCIA: TStringField;
    sqlProntuarioPODERAALMOCARORGANIZACO_SIM: TStringField;
    sqlProntuarioPODERAALMOCARORGANIZACO_NAO: TStringField;
    sqlProntuarioPODERAALMOCARORGANIZACO_MOTIVO: TStringField;
    sqlProntuarioALERGICORESTRICOALGUMALIMENTO_SIM: TStringField;
    sqlProntuarioALERGICORESTRICOALGUMALIMENTO_NAO: TStringField;
    sqlProntuarioALERGICORESTRICOALGUMALIMENTO_QUAL: TStringField;
    cdsProntuarioFAZUSODEMEDICAMENTOS_SIM: TStringField;
    cdsProntuarioFAZUSODEMEDICAMENTOS_NAO: TStringField;
    cdsProntuarioFAZUSODEMEDICAMENTOS_QUAL: TStringField;
    cdsProntuarioALERGICOALGUMMEDICAMENTO_SIM: TStringField;
    cdsProntuarioALERGICOALGUMMEDICAMENTO_NAO: TStringField;
    cdsProntuarioALERGICOALGUMMEDICAMENTO_QUAL: TStringField;
    cdsProntuarioPOSSUIBILHETEESPECIALTRANSPORTE_SIM: TStringField;
    cdsProntuarioPOSSUIBILHETEESPECIALTRANSPORTE_NAO: TStringField;
    cdsProntuarioPOSSUIBILHETEESPECIALTRANSPORTE_QUAL: TStringField;
    cdsProntuarioAUTORIZADOIREMBORASOZINHO_SIM: TStringField;
    cdsProntuarioAUTORIZADOIREMBORASOZINHO_NAO: TStringField;
    cdsProntuarioAUTORIZADOSERFILMADOFOTOGRAFADO_SIM: TStringField;
    cdsProntuarioAUTORIZADOSERFILMADOFOTOGRAFADO_NAO: TStringField;
    cdsProntuarioAUTORIZADOPARTICIPARATIVIDADESEXTERNAS_SIM: TStringField;
    cdsProntuarioAUTORIZADOPARTICIPARATIVIDADESEXTERNAS_NAO: TStringField;
    cdsProntuarioCOMPARECERDIARIAMENTE_SIM: TStringField;
    cdsProntuarioCOMPARECERDIARIAMENTE_NAO: TStringField;
    cdsProntuarioPERIODOADAPTACO: TStringField;
    cdsProntuarioDIASINDICADOSFREQUENCIA: TStringField;
    cdsProntuarioPODERAALMOCARORGANIZACO_SIM: TStringField;
    cdsProntuarioPODERAALMOCARORGANIZACO_NAO: TStringField;
    cdsProntuarioPODERAALMOCARORGANIZACO_MOTIVO: TStringField;
    cdsProntuarioALERGICORESTRICOALGUMALIMENTO_SIM: TStringField;
    cdsProntuarioALERGICORESTRICOALGUMALIMENTO_NAO: TStringField;
    cdsProntuarioALERGICORESTRICOALGUMALIMENTO_QUAL: TStringField;
    sqlProntuarioIDADE_PAI: TBCDField;
    sqlProntuarioIDADE_MAE: TBCDField;
    sqlProntuarioIDADE_RESP: TBCDField;
    cdsProntuarioIDADE_PAI: TBCDField;
    cdsProntuarioIDADE_MAE: TBCDField;
    cdsProntuarioIDADE_RESP: TBCDField;
    sqlProntuarioPROFISSAO: TStringField;
    sqlProntuarioESCOLARIDADE: TStringField;
    cdsProntuarioPROFISSAO: TStringField;
    cdsProntuarioESCOLARIDADE: TStringField;
    sqlCandidato_ProntuarioCANDIDATO_NOMEESCOLA: TStringField;
    sqlCandidato_ProntuarioATIVIDADE_EXTRAS: TStringField;
    sqlCandidato_ProntuarioFREQUENTAESCOLA: TIntegerField;
    sqlCandidato_ProntuarioANO: TStringField;
    sqlCandidato_ProntuarioPERIODO: TIntegerField;
    sqlCandidato_ProntuarioTAMANHOCAMISETA: TIntegerField;
    sqlCandidato_ProntuarioREALIZAATENDIMENTOTERAPEUTICO: TIntegerField;
    sqlCandidato_ProntuarioREALIZAATENDIMENTOTERAPEUTICO_QUAL: TStringField;
    sqlCandidato_ProntuarioREALIZAATENDIMENTOTERAPEUTICO_DOUTOR: TStringField;
    sqlCandidato_ProntuarioREALIZAATENDIMENTOTERAPEUTICO_TEL: TStringField;
    sqlCandidato_ProntuarioRECEBEBENEFICIO: TIntegerField;
    sqlCandidato_ProntuarioRECEBEBENEFICIO_QUAL: TStringField;
    cdsCandidato_ProntuarioCANDIDATO_NOMEESCOLA: TStringField;
    cdsCandidato_ProntuarioATIVIDADE_EXTRAS: TStringField;
    cdsCandidato_ProntuarioFREQUENTAESCOLA: TIntegerField;
    cdsCandidato_ProntuarioANO: TStringField;
    cdsCandidato_ProntuarioPERIODO: TIntegerField;
    cdsCandidato_ProntuarioTAMANHOCAMISETA: TIntegerField;
    cdsCandidato_ProntuarioREALIZAATENDIMENTOTERAPEUTICO: TIntegerField;
    cdsCandidato_ProntuarioREALIZAATENDIMENTOTERAPEUTICO_QUAL: TStringField;
    cdsCandidato_ProntuarioREALIZAATENDIMENTOTERAPEUTICO_DOUTOR: TStringField;
    cdsCandidato_ProntuarioREALIZAATENDIMENTOTERAPEUTICO_TEL: TStringField;
    cdsCandidato_ProntuarioRECEBEBENEFICIO: TIntegerField;
    cdsCandidato_ProntuarioRECEBEBENEFICIO_QUAL: TStringField;
    sqlProntuarioCANDIDATO_NOMEESCOLA: TStringField;
    sqlProntuarioATIVIDADE_EXTRAS: TStringField;
    sqlProntuarioFREQUENTAESCOLA_SIM: TStringField;
    sqlProntuarioFREQUENTAESCOLA_NAO: TStringField;
    sqlProntuarioANO: TStringField;
    sqlProntuarioPERIODO_MANHA: TStringField;
    sqlProntuarioPERIODO_TARDE: TStringField;
    sqlProntuarioPERIODO_NOITE: TStringField;
    sqlProntuarioTAMANHOCAMISETA_P: TStringField;
    sqlProntuarioTAMANHOCAMISETA_M: TStringField;
    sqlProntuarioTAMANHOCAMISETA_G: TStringField;
    sqlProntuarioTAMANHOCAMISETA_GG: TStringField;
    sqlProntuarioREALIZAATENDIMENTOTERAPEUTICO_SIM: TStringField;
    sqlProntuarioREALIZAATENDIMENTOTERAPEUTICO_NAO: TStringField;
    sqlProntuarioREALIZAATENDIMENTOTERAPEUTICO_QUAL: TStringField;
    sqlProntuarioREALIZAATENDIMENTOTERAPEUTICO_DOUTOR: TStringField;
    sqlProntuarioREALIZAATENDIMENTOTERAPEUTICO_TEL: TStringField;
    cdsProntuarioCANDIDATO_NOMEESCOLA: TStringField;
    cdsProntuarioATIVIDADE_EXTRAS: TStringField;
    cdsProntuarioFREQUENTAESCOLA_SIM: TStringField;
    cdsProntuarioFREQUENTAESCOLA_NAO: TStringField;
    cdsProntuarioANO: TStringField;
    cdsProntuarioPERIODO_MANHA: TStringField;
    cdsProntuarioPERIODO_TARDE: TStringField;
    cdsProntuarioPERIODO_NOITE: TStringField;
    cdsProntuarioTAMANHOCAMISETA_P: TStringField;
    cdsProntuarioTAMANHOCAMISETA_M: TStringField;
    cdsProntuarioTAMANHOCAMISETA_G: TStringField;
    cdsProntuarioTAMANHOCAMISETA_GG: TStringField;
    cdsProntuarioREALIZAATENDIMENTOTERAPEUTICO_SIM: TStringField;
    cdsProntuarioREALIZAATENDIMENTOTERAPEUTICO_NAO: TStringField;
    cdsProntuarioREALIZAATENDIMENTOTERAPEUTICO_QUAL: TStringField;
    cdsProntuarioREALIZAATENDIMENTOTERAPEUTICO_DOUTOR: TStringField;
    cdsProntuarioREALIZAATENDIMENTOTERAPEUTICO_TEL: TStringField;
    sqlProntuarioRECEBEBENEFICIO_BPC: TStringField;
    sqlProntuarioRECEBEBENEFICIO_APOSENTADORIA: TStringField;
    sqlProntuarioRECEBEBENEFICIO_NAO: TStringField;
    sqlProntuarioRECEBEBENEFICIO_OUTROS: TStringField;
    sqlProntuarioRECEBEBENEFICIO_QUAL: TStringField;
    cdsProntuarioRECEBEBENEFICIO_BPC: TStringField;
    cdsProntuarioRECEBEBENEFICIO_APOSENTADORIA: TStringField;
    cdsProntuarioRECEBEBENEFICIO_NAO: TStringField;
    cdsProntuarioRECEBEBENEFICIO_OUTROS: TStringField;
    cdsProntuarioRECEBEBENEFICIO_QUAL: TStringField;
    sqlProntuarioRECEBE_RENDA: TStringField;
    sqlProntuarioRECEBE_BOLSA: TStringField;
    sqlProntuarioRECEBE_RENDA_CIDA: TStringField;
    sqlProntuarioRECEBE_ACAOJOVE: TStringField;
    cdsProntuarioRECEBEPROGRAMATRANSFERENCIARENDA_SIM: TStringField;
    cdsProntuarioRECEBEPROGRAMATRANSFERENCIARENDA_NAO: TStringField;
    cdsProntuarioRECEBE_RENDA: TStringField;
    cdsProntuarioRECEBE_BOLSA: TStringField;
    cdsProntuarioRECEBE_RENDA_CIDA: TStringField;
    cdsProntuarioRECEBE_ACAOJOVE: TStringField;
    dspProntuario_Endereco: TDataSetProvider;
    cdsProntuario_Endereco: TClientDataSet;
    dsProntuario_Endereco: TDataSource;
    sqlProntuario_Endereco: TFDQuery;
    sqlProntuario_EnderecoCANDIDATO: TFDAutoIncField;
    sqlProntuario_EnderecoTIPO: TStringField;
    sqlProntuario_EnderecoLOCATARIO: TStringField;
    sqlProntuario_EnderecoLOCALIDADE: TIntegerField;
    sqlProntuario_EnderecoUF: TIntegerField;
    sqlProntuario_EnderecoCEP: TStringField;
    sqlProntuario_EnderecoBAIRRO: TStringField;
    sqlProntuario_EnderecoNUMERO: TStringField;
    cdsProntuario_EnderecoCANDIDATO: TAutoIncField;
    cdsProntuario_EnderecoTIPO: TStringField;
    cdsProntuario_EnderecoLOCATARIO: TStringField;
    cdsProntuario_EnderecoLOCALIDADE: TIntegerField;
    cdsProntuario_EnderecoUF: TIntegerField;
    cdsProntuario_EnderecoCEP: TStringField;
    cdsProntuario_EnderecoBAIRRO: TStringField;
    cdsProntuario_EnderecoNUMERO: TStringField;
    dspProntuario_Contato: TDataSetProvider;
    cdsProntuario_Contato: TClientDataSet;
    dsProntuario_Contato: TDataSource;
    sqlProntuario_Contato: TFDQuery;
    sqlProntuario_ContatoCANDIDATO: TFDAutoIncField;
    sqlProntuario_ContatoTIPO: TIntegerField;
    sqlProntuario_ContatoVALOR: TStringField;
    cdsProntuario_ContatoCANDIDATO: TAutoIncField;
    cdsProntuario_ContatoTIPO: TIntegerField;
    cdsProntuario_ContatoVALOR: TStringField;
    sqlProntuario_EnderecoNOME_LOCALIDADE: TStringField;
    sqlProntuario_EnderecoSIGLA: TStringField;
    cdsProntuario_EnderecoNOME_LOCALIDADE: TStringField;
    cdsProntuario_EnderecoSIGLA: TStringField;
    sqlTelaAlunoALUNO: TFDAutoIncField;
    dspListarFuncionarios: TDataSetProvider;
    cdsListarFuncionarios: TClientDataSet;
    dsListarFuncionarios: TDataSource;
    sqlListarFuncionarios: TFDQuery;
    sqlListarFuncionariosFUNCIONARIO: TFDAutoIncField;
    sqlListarFuncionariosNOME: TStringField;
    cdsListarFuncionariosFUNCIONARIO: TAutoIncField;
    cdsListarFuncionariosNOME: TStringField;
    sqlUsuarios: TFDQuery;
    dspValidaLogin: TDataSetProvider;
    cdsValidaLogin: TClientDataSet;
    sqlUsuariosUSUARIO: TFDAutoIncField;
    sqlUsuariosUSR_LOGIN: TStringField;
    sqlUsuariosUSR_SENHA: TStringField;
    sqlUsuariosPESSOA: TIntegerField;
    sqlUsuariosGRUPOACESSO: TIntegerField;
    sqlUsuariosFUNCIONARIO: TIntegerField;
    sqlUsuariosSITUACAO: TIntegerField;
    dsUsuarios: TDataSource;
    sqlGrupoAcesso: TFDQuery;
    dspGrupoAcesso: TDataSetProvider;
    cdsGrupoAcesso: TClientDataSet;
    dsGrupoAcesso: TDataSource;
    sqlGrupoAcessoGRUPOACESSO: TFDAutoIncField;
    sqlGrupoAcessoNOME: TStringField;
    cdsGrupoAcessoGRUPOACESSO: TAutoIncField;
    cdsGrupoAcessoNOME: TStringField;
    sqlValidaLogin: TFDQuery;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    sqlValidaLoginGRUPOACESSO: TIntegerField;
    cdsValidaLoginGRUPOACESSO: TIntegerField;
    cdsUsuariosUSUARIO: TAutoIncField;
    cdsUsuariosUSR_LOGIN: TStringField;
    cdsUsuariosUSR_SENHA: TStringField;
    cdsUsuariosPESSOA: TIntegerField;
    cdsUsuariosGRUPOACESSO: TIntegerField;
    cdsUsuariosFUNCIONARIO: TIntegerField;
    cdsUsuariosSITUACAO: TIntegerField;
    sqlAcompanhamentoEMAIL: TStringField;
    cdsAcompanhamentoEMAIL: TStringField;
    procedure dspParametrosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure cdsEnderecoCEPChange(Sender: TField);
    procedure dspAcompanhamentoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure DataModuleCreate(Sender: TObject);
  private
    FVersaoSistema, FVersaoExecutavel, FURLAtualizacao, FNomeExe,
    Femail_login, Femail_senha,Femail_smtp, Femail_porta : string;
    FQtdVagas, FModoTela, FQtdAlunosAtivos, FTamanho_Exe: Integer;
    function TrocaCaracterEspecial(aTexto: string; aLimExt: boolean): string;

    { Private declarations }
  public
      property Email_login: String read Femail_login write Femail_login;
      property Email_senha: String read Femail_senha write Femail_senha;
      property Email_smtp: String read Femail_smtp write Femail_smtp;
      property Email_porta: String read Femail_porta write Femail_porta;


    property VersaoSistema: String read FVersaoSistema write FVersaoSistema;
    property Tamanho_Exe: Integer read FTamanho_Exe write FTamanho_Exe;
    property URLAtualizacao: String read FURLAtualizacao write FURLAtualizacao;
    property VersaoExecutavel: String read FVersaoExecutavel
      write FVersaoExecutavel;
    property NomeExe: String read FNomeExe write FNomeExe;
    property QtdVagas: Integer read FQtdVagas write FQtdVagas;
    property QtdAlunosAtivos: Integer read FQtdAlunosAtivos
      write FQtdAlunosAtivos;

    function ProximoID(Tabela: string): Integer;
    procedure CarregarParametros(PathPrograma: string);
    function ObterVersaoApp(PathPrograma: string): string;
    function isCPF(CPF: string): boolean;
    function ConsultaCEP(sCEP: string): TEndereco;
    procedure AtualizarVersao;
    function TamanhoArquivo(Arquivo : String):Integer;
    procedure EnviarEmail(username, password, totarget, subject, body: string);

    { Public declarations }
  end;

var
  dm_principal: Tdm_principal;

implementation

{$R *.dfm}
{ Tdm_principal }

procedure Tdm_principal.CarregarParametros(PathPrograma: string);
begin
  dm_principal.cdsParametros.close;
  dm_principal.cdsParametros.Open;
  dm_principal.cdsParametros.First;

  while not dm_principal.cdsParametros.Eof do
  begin

    if dm_principal.cdsParametrosPARAMETRO.AsString = 'VersaoSistema' then
      VersaoSistema := dm_principal.cdsParametrosVALOR.AsString
    else if dm_principal.cdsParametrosPARAMETRO.AsString = 'URLAtualizacao' then
      URLAtualizacao := dm_principal.cdsParametrosVALOR.AsString
    else if dm_principal.cdsParametrosPARAMETRO.AsString = 'QtdVagas' then
      QtdVagas := StrToInt(dm_principal.cdsParametrosVALOR.AsString)
    else if dm_principal.cdsParametrosPARAMETRO.AsString = 'Tamanho_Exe' then
      Tamanho_Exe := StrToInt(dm_principal.cdsParametrosVALOR.AsString)
    else if dm_principal.cdsParametrosPARAMETRO.AsString = 'QtdAlunosAtivos' then
      QtdAlunosAtivos := StrToInt(dm_principal.cdsParametrosVALOR.AsString)

    else if dm_principal.cdsParametrosPARAMETRO.AsString = 'Email_login' then
      email_login := dm_principal.cdsParametrosVALOR.AsString
    else if dm_principal.cdsParametrosPARAMETRO.AsString = 'Email_senha' then
      email_senha := dm_principal.cdsParametrosVALOR.AsString
    else if dm_principal.cdsParametrosPARAMETRO.AsString = 'Email_smtp' then
      email_smtp := dm_principal.cdsParametrosVALOR.AsString
    else if dm_principal.cdsParametrosPARAMETRO.AsString = 'Email_porta' then
      email_porta := dm_principal.cdsParametrosVALOR.AsString;



    dm_principal.cdsParametros.Next;
  end;

   VersaoExecutavel := dm_principal.ObterVersaoApp(PathPrograma);

end;

procedure Tdm_principal.cdsEnderecoCEPChange(Sender: TField);
var
  sEndereco: TEndereco;
  sCEP: String;
begin

  sCEP := cdsEnderecoCEP.AsString;
  if length(sCEP) <> 9 then
    exit;

  sEndereco := dm_principal.ConsultaCEP(sCEP);
  cdsEnderecoLOCATARIO.AsString := sEndereco.Logradouro;
  cdsEnderecoBAIRRO.AsString := sEndereco.Bairro;

  cdsTipoEndereco.First; // Tipo  "rua", "av."
  if cdsTipoEndereco.Locate('DESCRICAO', sEndereco.Tipo, [loPartialKey]) then
    cdsEnderecoTIPO.AsInteger := cdsTipoEnderecoTIPO.AsInteger;

  cdsUF.First; // sp RJ
  if cdsUF.Locate('SIGLA', sEndereco.Estado, [loPartialKey]) then
    cdsEnderecoUF.AsInteger := cdsUFUF.AsInteger;

  cdsLocalidade.First; // sAO PAULO
  cdsLocalidade.Filtered := False;
  cdsLocalidade.Filter := 'UF =' + IntToStr(cdsEnderecoUF.AsInteger);
  cdsLocalidade.Filtered := True;
  if cdsLocalidade.Locate('NOME_LOCALIDADE', sEndereco.Cidade, [loCaseInsensitive,loPartialKey])
  then
    cdsEnderecoLOCALIDADE.AsInteger := cdsLocalidadeLOCALIDADE.AsInteger;

  cdsLocalidade.Filtered := False;

end;

function Tdm_principal.ConsultaCEP(sCEP: string): TEndereco;
var
  lodados: TStringList;
  FEndereco: TEndereco;
begin
  FEndereco := TEndereco.Create;

  // Cria-se uma string List
  lodados := TStringList.Create;
  // Nesta linha busca-se a informação através da url indicada
  // StrinReplace eh utilizada para substituir os caracteres & por CR
  // UrlDecode eh para eliminar caracteres de código html para acentos
  // &formato=query_string ou xml javascript
  // ele retorna para o componente em qualquer um dos formatos acima
  // Mais detalhes entre na pagina http://republicavirtual.com.br
{  lodados.StrictDelimiter := true;
  lodados.text := stringreplace(HTTPDecode(idhttp1.Get('http://republicavirtual.com.br/web_cep.php?cep=' +
                                                          sCep +
                                                          '&formato=query_string')),
                                   '&',
                                   #13#10,
                                   [rfreplaceAll]);}

{
  // lodados vira uma matriz e fazemos o acesso aos dados...
  FEndereco.Tipo := lodados.Values['TIPO_LOGRADOURO'];
  FEndereco.Logradouro := lodados.Values['LOGRADOURO'];
  FEndereco.Bairro := lodados.Values['BAIRRO'];
  FEndereco.Cidade := lodados.Values['CIDADE'];
  FEndereco.Estado := lodados.Values['UF'];
 } // acredito que ficou bem mais simples dessa forma consultar a rua pelo cep
  // Obrigado
  ACBrCEP1.BuscarPorCEP( sCEP);
  if ACBrCEP1.Enderecos.Count > 0 then
  begin
    FEndereco.Tipo       := UpperCase(ACBrCEP1.Enderecos[0].Tipo_Logradouro);
    FEndereco.Logradouro := UpperCase(ACBrCEP1.Enderecos[0].Logradouro);
    FEndereco.Bairro     := UpperCase(ACBrCEP1.Enderecos[0].Bairro);
    FEndereco.Cidade     := UpperCase(ACBrCEP1.Enderecos[0].Municipio);
    FEndereco.Estado     := UpperCase(ACBrCEP1.Enderecos[0].UF);
  end
  else
  begin
    FEndereco.Tipo       := '';
    FEndereco.Logradouro := '';
    FEndereco.Bairro     := '';
    FEndereco.Cidade     := '';
    FEndereco.Estado     := '';
  end;

  FEndereco.Logradouro := UpperCase(TrocaCaracterEspecial(FEndereco.Logradouro, False));
  FEndereco.Bairro := UpperCase(TrocaCaracterEspecial(FEndereco.Bairro, False));
  FEndereco.Cidade := UpperCase(TrocaCaracterEspecial(FEndereco.Cidade, False));
  FEndereco.Estado := UpperCase(TrocaCaracterEspecial(FEndereco.Estado, False));

  Result := FEndereco;
end;

procedure Tdm_principal.DataModuleCreate(Sender: TObject);
var Ini1 : TIniFile;
    servidor, banco,nomeusu,senhausu,Arq  : String;
    ArqNovo: TStringList;
     oParams: TFDPhysMSSQLConnectionDefParams; // MSSQL connection params
begin
  Arq  :=  ExtractFileDir( ParamStr(0) ) + '\config.ini';
  if FileExists(Arq) then
  begin
    Ini1 := TIniFile.Create(Arq);
    nomeusu  :=  Ini1.ReadString('CONFIGURACAO','USUARIO', 'usr_saaf');
    senhausu :=  Ini1.ReadString('CONFIGURACAO','SENHA', 'comandos');
    banco    :=  Ini1.ReadString('CONFIGURACAO','BANCO', 'SAAF');
    servidor :=  Ini1.ReadString('CONFIGURACAO','SERVIDOR', 'mssql914.umbler.com,5003');
  end
  else
  begin
    Ini1 := TIniFile.Create(Arq);
    Ini1.WriteString('CONFIGURACAO','USUARIO', 'usr_saaf');
    Ini1.WriteString('CONFIGURACAO','SENHA', 'comandos');
    Ini1.WriteString('CONFIGURACAO','BANCO', 'SAAF');
    Ini1.WriteString('CONFIGURACAO','SERVIDOR', 'mssql914.umbler.com,5003');

    nomeusu  :=  'usr_saaf';
    senhausu :=  'comandos';
    banco    :=  'SAAF';
    servidor :=  'mssql914.umbler.com,5003';
  end;


    conSAAS1.Close;

    TFDPhysMSSQLConnectionDefParams(conSAAS1.Params).DriverID := 'MSSQL';
    TFDPhysMSSQLConnectionDefParams(conSAAS1.Params).Server   := servidor;
    TFDPhysMSSQLConnectionDefParams(conSAAS1.Params).Password := senhausu;
    TFDPhysMSSQLConnectionDefParams(conSAAS1.Params).UserName := nomeusu;
    TFDPhysMSSQLConnectionDefParams(conSAAS1.Params).Database := banco;
    conSAAS1.Open;



  AtualizarVersao;

end;

procedure Tdm_principal.dspAcompanhamentoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'ACOMPANHAMENTO';
end;

procedure Tdm_principal.dspParametrosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'PARAMETROS';
end;

procedure Tdm_principal.EnviarEmail(username, password, totarget, subject,
  body: string);
var
  DATA: TIdMessage;
  SMTP: TIdSMTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  Fsmtp : string; Fporta : string;
begin

  Fsmtp := 'smtp.gmail.com';
  Fporta := '587';

  if username = '' then
  begin
    username := Email_login;
    password := Email_senha;
    Fsmtp := Email_smtp;
    Fporta := Email_porta;
  end;


  SMTP := TIdSMTP.Create(nil);
  DATA := TIdMessage.Create(nil);
  SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  SSL.SSLOptions.Method := sslvTLSv1;
  SSL.SSLOptions.Mode := sslmUnassigned;
  SSL.SSLOptions.VerifyMode := [];
  SSL.SSLOptions.VerifyDepth := 0;

  DATA.From.Address := username;
  DATA.Recipients.EMailAddresses := totarget;
  DATA.subject := subject;
  DATA.body.text := body;

  SMTP.IOHandler := SSL;
  SMTP.Host := Fsmtp;//'smtp.gmail.com';
  SMTP.Port := StrToint(Fporta);//587;
  SMTP.username := username;
  SMTP.password := password;
  SMTP.UseTLS := utUseExplicitTLS;

  SMTP.Connect;
  SMTP.Send(DATA);
  SMTP.Disconnect;

  SMTP.Free;
  DATA.Free;
  SSL.Free;

end;


function Tdm_principal.isCPF(CPF: string): boolean;
var
  dig10, dig11: string;
  s, i, r, peso: Integer;
begin
  // length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((CPF = '00000000000') or (CPF = '11111111111') or (CPF = '22222222222') or
    (CPF = '33333333333') or (CPF = '44444444444') or (CPF = '55555555555') or
    (CPF = '66666666666') or (CPF = '77777777777') or (CPF = '88888888888') or
    (CPF = '99999999999') or (length(CPF) <> 11)) then
  begin
    isCPF := False;
    exit;
  end;

  // try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
    { *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
      // StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
      dig10 := '0'
    else
      str(r: 1, dig10); // converte um número no respectivo caractere numérico

    { *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
      dig11 := '0'
    else
      str(r: 1, dig11);

    { Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11])) then
      isCPF := True
    else
      isCPF := False;
  except
    isCPF := False
  end;

end;

function Tdm_principal.ObterVersaoApp(PathPrograma: string): string;
var
  VerInfoSize: DWORD;
  Dummy: DWORD;
  VerValueSize: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
  V1, V2, V3, V4: Word;
  Prog: string;
  // Ultimo        : string;
begin
  try
    // Se não passar o exe, consulta o a propria versão
    if PathPrograma = '' then
      Prog := NomeExe
    else
    begin
      if FileExists(PathPrograma) then
      begin
       Prog := PathPrograma;
      end
      else
      begin
       Result := '0.0.0.0';
       exit;
      end;


    end;

    VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);

    with VerValue^ do
    begin
      V1 := DwFileVersionMS shr 16;
      V2 := DwFileVersionMS and $FFFF;
      V3 := DwFileVersionLS shr 16;
      V4 := DwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);

    Result := Copy('100' + IntToStr(V1), 4, 2) + '.' +
      Copy('100' + IntToStr(V2), 4, 2) + '.' + Copy('100' + IntToStr(V3), 4, 2)
      + '.' + Copy('100' + IntToStr(V4), 4, 2);
  except
    on E: Exception do
      raise Exception.Create('Não foi possível extrair a versão do arquivo ' +
        Prog + #13 +
        'Verifique se o arquivo existe e se o mesmo contém informações de versionamento.');
  end;

end;

function Tdm_principal.ProximoID(Tabela: string): Integer;
begin
  dm_principal.cdsProximoID.close;
  dm_principal.cdsProximoID.Params.ParamByName('TABELA').AsWideString := Tabela;
  dm_principal.cdsProximoID.Open;

  dm_principal.cdsProximoID.First;
  Result := dm_principal.cdsProximoIDPROX_ID.AsInteger;
end;

function Tdm_principal.TamanhoArquivo(Arquivo: String): Integer;
var
  myFile: file of Byte; // Utilizando file of byte, o tratamento do arquivo
  myFileSize: Longint; // LongInt para garantir que arquivos muito longos
begin
    AssignFile(myFile, Arquivo ); // Cria um ponteiro
    Reset(myFile); // Abre o arquivo como somente leitura
    myFileSize := FileSize(myFile); // Obtém o tamanho do arquivo
    Result :=  (FileSize (myFile)); // Exibe o tamanho
end;

function Tdm_principal.TrocaCaracterEspecial(aTexto: string;
  aLimExt: boolean): string;
const
  // Lista de caracteres especiais
  xCarEsp: array [1 .. 39] of String = ('á', 'à', 'ã', 'â', 'ä', 'Á', 'À', 'Ã',
    'Â', 'Ä', 'é', 'è', 'É', 'È', 'í', 'ì', 'Í', 'Ì', 'ó', 'ò', 'ö', 'õ', 'ô',
    'Ó', 'Ò', 'Ö', 'Õ', 'Ô', 'ú', 'ù', 'ü', 'Ú', 'Ù', 'Ü', 'ç', 'Ç', 'ñ',
    'Ñ', '+');
  // Lista de caracteres para troca
  xCarTro: array [1 .. 39] of String = ('a', 'a', 'a', 'a', 'a', 'A', 'A', 'A',
    'A', 'A', 'e', 'e', 'E', 'E', 'i', 'i', 'I', 'I', 'o', 'o', 'o', 'o', 'o',
    'O', 'O', 'O', 'O', 'O', 'u', 'u', 'u', 'u', 'u', 'u', 'c', 'C', 'n',
    'N', ' ');
  // Lista de Caracteres Extras
  xCarExt: array [1 .. 48] of string = ('<', '>', '!', '@', '#', '$', '%', '¨',
    '&', '*', '(', ')', '_', '+', '=', '{', '}', '[', ']', '?', ';', ':', ',',
    '|', '*', '"', '~', '^', '´', '`', '¨', 'æ', 'Æ', 'ø', '£', 'Ø', 'ƒ', 'ª',
    'º', '¿', '®', '½', '¼', 'ß', 'µ', 'þ', 'ý', 'Ý');
var
  xTexto: string;
  i: Integer;
begin
  xTexto := aTexto;
  for i := 1 to 39 do
    xTexto := stringreplace(xTexto, xCarEsp[i], xCarTro[i], [rfreplaceAll]);
  // De acordo com o parâmetro aLimExt, elimina caracteres extras.
  if (aLimExt) then
    for i := 1 to 48 do
      xTexto := stringreplace(xTexto, xCarExt[i], '', [rfreplaceAll]);
  Result := xTexto;
end;

{ TEndereco }

procedure Tdm_principal.AtualizarVersao;
var
  BaixouArquivo : Boolean;
  ArquivoNovo : String;
  Arquivo : String;
  TamArquivo, Cont : Integer;
begin
  Arquivo := ExtractFileDir(ParamStr(0)) + '\SAAF.exe';
  ArquivoNovo := ExtractFileDir(ParamStr(0)) + '\SAAF_NOVO.exe';

  Application.ProcessMessages;

  if DM_Principal.VersaoExecutavel <> DM_Principal.VersaoSistema then
  begin
    BaixouArquivo := False;

    URLDownloadToFile(nil, pchar(DM_Principal.URLAtualizacao),pchar( ArquivoNovo ), 0, nil);

    BaixouArquivo :=  FileExists( ArquivoNovo );


    Cont := 0;
    if not BaixouArquivo then
    repeat



        sleep(100);
        Cont := Cont+1;
        if Cont>100 then
        begin
          BaixouArquivo :=  FileExists( ArquivoNovo );

          if BaixouArquivo then
          begin
              TamArquivo := TamanhoArquivo(ArquivoNovo);
              if TamArquivo>=FTamanho_Exe then
                  BaixouArquivo := True;
          end;


          ShowMEssage('Erro de conexão.');
          exit;
        end;
    until BaixouArquivo;


    try
       if FileExists(Arquivo) then
          DeleteFile(  pchar(Arquivo) );
    except on e:exception do begin
        ShowMEssage('DeleteFile => ' + e.Message);
    end;

    end;

    try
      RenameFile(  pchar(ArquivoNovo),  pchar(Arquivo) );
    except on e:exception do begin
        ShowMEssage('RenameFile => ' + e.Message);
    end;

    end;


   //WinExec(  PAnsiChar( Arquivo) , 0);
   ShowMessage('Sistema atualizado com sucesso, execute-o novamente.');

  end;

end;




end.
