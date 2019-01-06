declare @dicionario table (
 Tabela	varchar(255)
,Coluna	varchar(255)
,Tipo	varchar(255)
,Tamanho smallint
--,Precisão	tinyint
--,Escala	tinyint
,PK	int
,FK	int
,Descricao varchar(255) )


insert into @dicionario
SELECT 
  --S.name as 'Schema'
   cast(T.name as varchar(255)) as Tabela
  ,cast(C.name as varchar(255)) as Coluna
  ,cast(TY.name as varchar(255)) as Tipo
  ,C.max_length as 'Tamanho' -- Tamanho em bytes, para nvarchar normalmente se divide este valor por 2
  --,C.precision as 'Precisao' -- Para tipos numeric e decimal (tamanho)
  --,C.scale as 'Escala' -- Para tipos numeric e decimal (números após a virgula)
  ,(select COUNT(1) AS PK  from sys.objects where name like 'PK_'+c.name and c.name = t.name) AS PK
  ,(select COUNT(1) AS PK  from sys.objects where name like 'FK_'+T.name+'_'+C.name ) AS FK
  ,''
FROM sys.columns C
INNER JOIN sys.tables T ON T.object_id = C.object_id
INNER JOIN sys.types TY ON TY.user_type_id = C.user_type_id
LEFT JOIN sys.schemas S   on T.schema_id = S.schema_id
WHERE T.name NOT IN ('caixa','itens','caixa_itens')



update @dicionario set Tipo = 'Inteiro' where tipo = 'int';
update @dicionario set Tipo = 'Texto' where tipo = 'varchar';
update @dicionario set Tipo = 'Data' where tipo = 'date';
update @dicionario set Tipo = 'DataHora' where tipo = 'datetime';

UPDATE @dicionario SET Descricao='Unidade Federativa / Estado' where Tabela+'=>'+Coluna = 'UF=>NOME_UF'
UPDATE @dicionario SET Descricao='Sigla do Estado' where Tabela+'=>'+Coluna = 'UF=>SIGLA'
UPDATE @dicionario SET Descricao='Unidade Federativa da Localidade' where Tabela+'=>'+Coluna = 'LOCALIDADE=>UF'
UPDATE @dicionario SET Descricao='Localidade/Municipio' where Tabela+'=>'+Coluna = 'LOCALIDADE=>NOME_LOCALIDADE'
UPDATE @dicionario SET Descricao='' where Tabela+'=>'+Coluna = 'PARAMETROS=>PARAMETROS'
UPDATE @dicionario SET Descricao='Parametro do sistema' where Tabela+'=>'+Coluna = 'PARAMETROS=>PARAMETRO'
UPDATE @dicionario SET Descricao='Valor do Parametro' where Tabela+'=>'+Coluna = 'PARAMETROS=>VALOR'
UPDATE @dicionario SET Descricao='Situação do registro Ativo/Inativo' where Tabela+'=>'+Coluna = 'PARAMETROS=>SITUACAO'
UPDATE @dicionario SET Descricao='Informções de Tela' where Tabela+'=>'+Coluna = 'TIPO=>TIPO'
UPDATE @dicionario SET Descricao='Chave do campo' where Tabela+'=>'+Coluna = 'TIPO=>VALOR'
UPDATE @dicionario SET Descricao='Valor do campo' where Tabela+'=>'+Coluna = 'TIPO=>DESCRICAO'
UPDATE @dicionario SET Descricao='Descrição do campo' where Tabela+'=>'+Coluna = 'TIPO=>TABELA_ORIGEM'
UPDATE @dicionario SET Descricao='Tabela de referência' where Tabela+'=>'+Coluna = 'PESSOA=>CPF_CNPJ'
UPDATE @dicionario SET Descricao='Codigo do RG' where Tabela+'=>'+Coluna = 'PESSOA=>RG'
UPDATE @dicionario SET Descricao='email da entidade base Pessoa' where Tabela+'=>'+Coluna = 'PESSOA=>EMAIL'
UPDATE @dicionario SET Descricao='Rua, Avenida, Alameda, etc...' where Tabela+'=>'+Coluna = 'ENDERECO=>TIPO'
UPDATE @dicionario SET Descricao='' where Tabela+'=>'+Coluna = 'ENDERECO=>LOCATARIO'
UPDATE @dicionario SET Descricao='CEP do endereço' where Tabela+'=>'+Coluna = 'ENDERECO=>CEP'
UPDATE @dicionario SET Descricao='Bairro' where Tabela+'=>'+Coluna = 'ENDERECO=>BAIRRO'
UPDATE @dicionario SET Descricao='Número' where Tabela+'=>'+Coluna = 'ENDERECO=>NUMERO'
UPDATE @dicionario SET Descricao='' where Tabela+'=>'+Coluna = 'ENDERECOPESSOA=>ENDERECOPESSOA'
UPDATE @dicionario SET Descricao='Tel.Fixo, Tel.Comercial, Celular, etc...' where Tabela+'=>'+Coluna = 'CONTATO=>TIPO'
UPDATE @dicionario SET Descricao='Número do telefone' where Tabela+'=>'+Coluna = 'CONTATO=>VALOR'
UPDATE @dicionario SET Descricao='Masculino / Feminino' where Tabela+'=>'+Coluna = 'GENERO=>DESCRICAO'
UPDATE @dicionario SET Descricao='Nome completo do candidato' where Tabela+'=>'+Coluna = 'CANDIDATO=>NOME'
UPDATE @dicionario SET Descricao='Data/Hora do cadastro' where Tabela+'=>'+Coluna = 'CANDIDATO=>DATA_CADASTRO'
UPDATE @dicionario SET Descricao='Data do Nascimento' where Tabela+'=>'+Coluna = 'CANDIDATO=>DATA_NASCIMENTO'
UPDATE @dicionario SET Descricao='Nome completo do Pai' where Tabela+'=>'+Coluna = 'CANDIDATO=>NOME_PAI'
UPDATE @dicionario SET Descricao='Nome completo da Mãe' where Tabela+'=>'+Coluna = 'CANDIDATO=>NOME_MAE'
UPDATE @dicionario SET Descricao='Branco / Padrdo / Negros / Indígena / Amarelo' where Tabela+'=>'+Coluna = 'CANDIDATO=>ETINIA'
UPDATE @dicionario SET Descricao='Situação do registro Ativo/Inativo' where Tabela+'=>'+Coluna = 'NECESSIDADE=>ATIVA'
UPDATE @dicionario SET Descricao='Descrição da necessidade especial' where Tabela+'=>'+Coluna = 'NECESSIDADE=>DESCRICAO'
UPDATE @dicionario SET Descricao='Número de matricula' where Tabela+'=>'+Coluna = 'ALUNO=>MATRICULA'
UPDATE @dicionario SET Descricao='Data da Matricula' where Tabela+'=>'+Coluna = 'ALUNO=>DATA_MATRICULA'
UPDATE @dicionario SET Descricao='Situação do registro Ativo/Inativo' where Tabela+'=>'+Coluna = 'ALUNO=>SITUACAO'
UPDATE @dicionario SET Descricao='Documento anexado' where Tabela+'=>'+Coluna = 'DOCUMENTO=>ANEXO'
UPDATE @dicionario SET Descricao='Data e Hora do anexo' where Tabela+'=>'+Coluna = 'DOCUMENTO=>DATAANEXO'
UPDATE @dicionario SET Descricao='' where Tabela+'=>'+Coluna = 'DOCUMENTO=>ALUNO'
UPDATE @dicionario SET Descricao='Professora, Psicologa, Recepcionista' where Tabela+'=>'+Coluna = 'PROFISSAO=>DESCRICAO'
UPDATE @dicionario SET Descricao='Data da admissão' where Tabela+'=>'+Coluna = 'FUNCIONARIO=>ADMISSAO'
UPDATE @dicionario SET Descricao='Data da demissão' where Tabela+'=>'+Coluna = 'FUNCIONARIO=>DEMISSAO'
UPDATE @dicionario SET Descricao='Nome completo do funcionário' where Tabela+'=>'+Coluna = 'FUNCIONARIO=>NOME'
UPDATE @dicionario SET Descricao='Data de Nascimento' where Tabela+'=>'+Coluna = 'FUNCIONARIO=>DTNASCIMENTO'
UPDATE @dicionario SET Descricao='Razão social da empresa' where Tabela+'=>'+Coluna = 'EMPRESA=>RAZAO'
UPDATE @dicionario SET Descricao='Nome fantasia da empresa' where Tabela+'=>'+Coluna = 'EMPRESA=>FANTASIA'
UPDATE @dicionario SET Descricao='Data da Admissão do aluno' where Tabela+'=>'+Coluna = 'CONTRATO=>DATA_ADMISSAO'
UPDATE @dicionario SET Descricao='Observações gerais do contrato' where Tabela+'=>'+Coluna = 'CONTRATO=>OBSERVACOES'
UPDATE @dicionario SET Descricao='Nome do grupo de acesso' where Tabela+'=>'+Coluna = 'GRUPOACESSO=>NOME'
UPDATE @dicionario SET Descricao='Tela, Botão, Relatorio, etc...' where Tabela+'=>'+Coluna = 'PERMISSOES=>TIPO'
UPDATE @dicionario SET Descricao='Nome da Permissão' where Tabela+'=>'+Coluna = 'PERMISSOES=>NOME'
UPDATE @dicionario SET Descricao='Nome do Componente no codigo fonte' where Tabela+'=>'+Coluna = 'PERMISSOES=>COMPONENTE'
UPDATE @dicionario SET Descricao='Situação do registro Ativo/Inativo' where Tabela+'=>'+Coluna = 'PERMISSOES=>SITUACAO'
UPDATE @dicionario SET Descricao='Login do usuario' where Tabela+'=>'+Coluna = 'USUARIO=>USR_LOGIN'
UPDATE @dicionario SET Descricao='Senha do usuario' where Tabela+'=>'+Coluna = 'USUARIO=>USR_SENHA'
UPDATE @dicionario SET Descricao='' where Tabela+'=>'+Coluna = 'USUARIO=>PESSOA'
UPDATE @dicionario SET Descricao='Situação do registro Ativo/Inativo' where Tabela+'=>'+Coluna = 'USUARIO=>SITUACAO'
UPDATE @dicionario SET Descricao='Data do acompanhamento' where Tabela+'=>'+Coluna = 'ACOMPANHAMENTO=>DATA'
UPDATE @dicionario SET Descricao='Data de retorno do acompanhamento' where Tabela+'=>'+Coluna = 'ACOMPANHAMENTO=>DATARETORNO'
UPDATE @dicionario SET Descricao='Observações gerais sobre o acompanhamento' where Tabela+'=>'+Coluna = 'ACOMPANHAMENTO=>OBSERVACOES'



select --'UPDATE @dicionario SET Descricao='''' where Tabela+''=>''+Coluna = '''+Tabela+'=>'+Coluna+'''', 
	  * from @dicionario
--where pk = 0  and fk = 0

