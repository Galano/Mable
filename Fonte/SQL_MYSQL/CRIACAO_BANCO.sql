--update parametros set valor = 'ftp://mablesaaf-com.umbler.net/exe/saaf.exe' where parametro = 'urlatualizacao'
--update parametros set valor = '1.0.0.1' where parametro = 'versaosistema'
/*
select 
		parametros
		,parametro
		,valor
		,situacao
from parametros

union all

select 
 99999999 as parametros 
,'qtdalunosativos' as parametro 
, cast( count(*) as varchar(10)) as valor 
, 1 as situacao
from aluno where situacao = 1
*/




--drop table localidade; cuidado!
--drop table uf; cuidado!
/*

if exists(select 1 from syscolumns where id = object_id('enderecopessoa') )  	drop table enderecopessoa;
if exists(select 1 from syscolumns where id = object_id('endereco') )			drop table endereco;
if exists(select 1 from syscolumns where id = object_id('parametros')  )		drop table parametros;
if exists(select 1 from syscolumns where id = object_id('contato')	)			drop table contato 
if exists(select 1 from syscolumns where id = object_id('contrato')	)			drop table contrato
if exists(select 1 from syscolumns where id = object_id('tipo') )				drop table tipo 
if exists(select 1 from syscolumns where id = object_id('candidato_necessidade')) drop table candidato_necessidade
if exists(select 1 from syscolumns where id = object_id('necessidade') )		drop table necessidade 
if exists(select 1 from syscolumns where id = object_id('acompanhamento'))		drop table acompanhamento 
if exists(select 1 from syscolumns where id = object_id('empresa') )			drop table empresa 
if exists(select 1 from syscolumns where id = object_id('documento'))			drop table documento
if exists(select 1 from syscolumns where id = object_id('aluno'))				drop table aluno 
if exists(select 1 from syscolumns where id = object_id('candidato') )			drop table candidato 
if exists(select 1 from syscolumns where id = object_id('usuario') )			drop table usuario
if exists(select 1 from syscolumns where id = object_id('grupoacesso_permissoes')) drop table grupoacesso_permissoes
if exists(select 1 from syscolumns where id = object_id('permissoes') )			drop table permissoes
if exists(select 1 from syscolumns where id = object_id('grupoacesso'))			drop table grupoacesso
if exists(select 1 from syscolumns where id = object_id('funcionario')	)		drop table funcionario 
if exists(select 1 from syscolumns where id = object_id('profissao') )			drop table profissao
if exists(select 1 from syscolumns where id = object_id('genero') )				drop table genero
if exists(select 1 from syscolumns where id = object_id('pessoa'))				drop table pessoa 
if exists(select 1 from syscolumns where id = object_id('prontuario'))				drop table prontuario 

*/
/*select    object_name(constid) fk, object_name(fkeyid) tabela_filha, object_name(rkeyid) tabela_pai, col_name(rkeyid, rkey) colunas_pai, col_name(fkeyid, fkey) colunas_pai
from    sysforeignkeys */


/* ***********feito na carga****************
create table uf(
 uf int auto_increment
,nome_uf varchar(50)
,sigla varchar(15)
,primary key (uf)
)

create table localidade(
 localidade int auto_increment
,uf int
,nome_localidade varchar(100)
,primary key (localidade)
)
*/


create table parametros(
 parametros int auto_increment
,parametro varchar(255)
,valor varchar(1000)
,situacao int
,primary key (parametros)
)


create table tipo(
 tipo int auto_increment
,valor int
,descricao varchar(255)
,tabela_origem varchar(255)
,primary key (tipo)
)


create table pessoa(
 pessoa int auto_increment
,cpf_cnpj varchar(15)
,rg varchar(150)
,email varchar(255)
,primary key (pessoa)
)




create table endereco(
 endereco int auto_increment
,tipo varchar(15)
,locatario varchar(255)
,localidade int
,uf int
,cep varchar(11)
,bairro  varchar(100)
,numero varchar(20)
,primary key (endereco)
,FOREIGN KEY (uf) REFERENCES uf(uf)
,FOREIGN KEY (localidade) REFERENCES localidade(localidade)
)
 

 

 
create table enderecopessoa(
 enderecopessoa int auto_increment
,endereco int
,pessoa int
,primary key (enderecopessoa)
,FOREIGN KEY (pessoa) REFERENCES pessoa(pessoa)
,FOREIGN KEY (endereco) REFERENCES endereco(endereco)
)


 

 
create table contato(
 contato int auto_increment
,pessoa int 
,tipo int
,valor varchar(255)
,primary key (contato)
,FOREIGN KEY (pessoa) REFERENCES pessoa(pessoa)
)

create table genero(
 genero int auto_increment 
,descricao varchar(50)
,primary key (genero)
)


create table candidato(
 candidato int auto_increment
,pessoa int
,nome varchar(255)
,data_cadastro datetime
,data_nascimento date
,nome_pai varchar(255)
,nome_mae varchar(255)
,etinia int
,genero int
,responsavel varchar(255)
,parentesco varchar(100)
,encaminhado varchar(100)
,procedencia varchar(100)
,foto BLOB 
,prontuario text
,nis varchar(20)
,pai_nascimento			datetime	
,mae_nascimento			datetime
,responsavel_nascimento	 datetime
,profissao					varchar(50)
,escolaridade				varchar(50)
,primary key (candidato)
,FOREIGN KEY (pessoa) REFERENCES pessoa(pessoa)
,FOREIGN KEY (genero) REFERENCES genero(genero)

)


create table prontuario(
 prontuario int auto_increment
,candidato int
,fazusodemedicamentos int
,fazusodemedicamentos_qual varchar(255)
,alergicoalgummedicamento  int
,alergicoalgummedicamento_qual varchar(255)
,possuibilheteespecialtransporte int
,possuibilheteespecialtransporte_qual varchar(255)
,recebeprogramatransferenciarenda int
,recebeprogramatransferenciarenda_qual varchar(255)
,autorizadoiremborasozinho  int
,autorizadoserfilmadofotografado int
,autorizadoparticiparatividadesexternas int
,comparecerdiariamente  int
,periodoadaptaco varchar(255)
,diasindicadosfrequencia varchar(255)
,poderaalmocarorganizaco int
,poderaalmocarorganizaco_motivo varchar(255)
,alergicorestricoalgumalimento int
,alergicorestricoalgumalimento_qual varchar(255)

,data_ref datetime
,primary key (prontuario)
,FOREIGN KEY (candidato) REFERENCES candidato(candidato)
)



create table candidato(
 candidato int auto_increment
,pessoa int
,nome varchar(255)
,primary key (candidato)
,FOREIGN KEY (pessoa) REFERENCES pessoa(pessoa)
)



create table necessidade(
 necessidade int auto_increment
,ativa int
,descricao varchar(255)
,primary key (necessidade)
)




create table candidato_necessidade(
 candidato_necessidade int auto_increment
,necessidade int 
,candidato int
,primary key (candidato_necessidade)
,FOREIGN KEY (candidato) REFERENCES candidato(candidato)
,FOREIGN KEY (necessidade) REFERENCES necessidade(necessidade)
)



create table aluno(
 aluno int auto_increment
,candidato int
,matricula int
,data_matricula datetime
,situacao int
,primary key (aluno)
,FOREIGN KEY (candidato) REFERENCES candidato(candidato)
)




create table documento(
 documento int auto_increment
,anexo text
,dataanexo datetime
,aluno int
,primary key (documento)
,FOREIGN KEY (aluno) REFERENCES aluno(aluno)
)



create table profissao(
 profissao int auto_increment
,descricao varchar(255)
,primary key (profissao)
)


create table funcionario(
 funcionario int auto_increment
,pessoa int
,admissao datetime
,demissao datetime
,profissao int
,nome varchar(255)
,dtnascimento datetime
,primary key (funcionario)
,FOREIGN KEY (profissao) REFERENCES profissao(profissao)
,FOREIGN KEY (pessoa) REFERENCES pessoa(pessoa)
)






create table empresa(
 empresa int auto_increment
,pessoa int
,razao varchar(255)
,fantasia varchar(255)
,primary key (empresa)
,FOREIGN KEY (pessoa) REFERENCES pessoa(pessoa)
)




create table contrato(
 contrato int auto_increment
,aluno int
,empresa int
,data_admissao datetime
,observacoes text
,primary key (contrato)
,FOREIGN KEY (aluno) REFERENCES aluno(aluno)
,FOREIGN KEY (empresa) REFERENCES empresa(empresa)
)




create table grupoacesso(
 grupoacesso int auto_increment
,nome varchar(100)
,primary key (grupoacesso)
)



create table permissoes(
 permissoes int auto_increment
,tipo int  -- 0 = tela / 1 = botao / 2 = ????
,nome varchar(255)  -- ex. cadastro de aluno
,componente varchar(255) -- ucadaluno 
,situacao int  -- ativo ou inativa recurso
,primary key (permissoes)
)




create table grupoacesso_permissoes(
 grupoacesso_permissoes int auto_increment
,grupoacesso int
,permissoes int
,primary key (grupoacesso_permissoes)
,FOREIGN KEY (grupoacesso) REFERENCES grupoacesso(grupoacesso)
,FOREIGN KEY (permissoes) REFERENCES permissoes(permissoes)
)


create table usuario(
 usuario int auto_increment
,usr_login varchar(100)
,usr_senha varchar(100)
,pessoa int
,grupoacesso int
,funcionario int
,situacao int
,primary key (usuario)
,FOREIGN KEY (grupoacesso) REFERENCES grupoacesso(grupoacesso)
,FOREIGN KEY (funcionario) REFERENCES funcionario(funcionario)
)



create table acompanhamento(
 acompanhamento int auto_increment
,aluno int
,funcionario int
,data datetime
,dataretorno datetime
,observacoes varchar(500)
,primary key (acompanhamento)
,FOREIGN KEY (aluno) REFERENCES aluno(aluno)
,FOREIGN KEY (funcionario) REFERENCES funcionario(funcionario)
)


/* carga!

insert into necessidade(descricao,ativa) values ('deficiência visual',1)
insert into necessidade(descricao,ativa) values ('deficiência auditiva',1)
insert into necessidade(descricao,ativa) values ('deficiência mental',1)
insert into necessidade(descricao,ativa) values ('deficiência física',1)
insert into necessidade(descricao,ativa) values ('deficiência múltipla',1)

insert into parametros(parametro,valor,situacao) values('versaosistema','1.0.0.0',1)
insert into parametros(parametro,valor,situacao) values('urlatualizacao','https://doc-08-0s-docs.googleusercontent.com/docs/securesc/q8c8t00hu757nukr1dhokhr7te6jc9ik/an0dnkmhk7065nca7q03i15qd6r1mtqh/1528192800000/09646512410485598135/09646512410485598135/1l_oavrmvxzumjh6xmw5phgr3umbkfrmb?e=download&nonce=qv8o3gg1qp810&user=09646512410485598135&hash=75gfqbtn55ov96dmc5f4tb4u4ecdh8c0',1)
insert into parametros(parametro,valor,situacao) values('qtdvagas','20',1)
insert into  parametros(parametro,valor,situacao) values ('tamanho_exe','45298688',1)



insert into genero(descricao) values('masculino')
insert into genero(descricao) values('feminino')

insert into grupoacesso(nome) values('admin')
insert into permissoes(tipo,nome,componente,situacao) values(0,'cad. alunos','frmcadastroalunos',1)
insert into permissoes(tipo,nome,componente,situacao) values(0,'cad. candidatos','frmcadastrocandidatos',1)
insert into grupoacesso_permissoes(grupoacesso,permissoes) select  (select  max(grupoacesso) from grupoacesso ),permissoes  from permissoes


insert into profissao(descricao) values('psicólogo'),('professor'),('gerente'),('coordenador'),('recepcionista')
insert into tipo(valor,descricao,tabela_origem) values (1,'tel','contato'),(2,'cel','contato')
insert into tipo(valor,descricao,tabela_origem) values (0,'tela','permissoes'),(1,'incluir','permissoes'),(2,'alterar','permissoes'),(3,'excluir','permissoes'),(4,'consultar','permissoes')

insert into tipo(valor,descricao,tabela_origem) values (1,'rua','endereco'),(2,'avenida','endereco'),(3,'alameda','endereco')



*/
/*
select * from pessoa;
select * from aluno;
select * from candidato;
select * from empresa;
select * from tipo;
select * from contrato

select * from contato;
select * from necessidade;
select * from profissao;
select * from funcionario;
select * from acompanhamento
*/
/*

select tipo,descricao from tipo where tabela_origem = 'endereco'
insert into tipo(descricao,tabela_origem) values 
 ('rua','endereco')
,('avenida','endereco')
*/


/**
update localidade  set nome_localidade = replace(nome_localidade,'ã','a') 
update localidade  set nome_localidade = replace(nome_localidade,'ã','a') 
update localidade  set nome_localidade = replace(nome_localidade,'á','a')
update localidade  set nome_localidade = replace(nome_localidade,'à','a')
update localidade  set nome_localidade = replace(nome_localidade,'ã','a')
update localidade  set nome_localidade = replace(nome_localidade,'â','a')
update localidade  set nome_localidade = replace(nome_localidade,'ä','a')
update localidade  set nome_localidade = replace(nome_localidade,'á','a')
update localidade  set nome_localidade = replace(nome_localidade,'à','a')
update localidade  set nome_localidade = replace(nome_localidade,'ã','a')
update localidade  set nome_localidade = replace(nome_localidade,'â','a')
update localidade  set nome_localidade = replace(nome_localidade,'ä','a')
update localidade  set nome_localidade = replace(nome_localidade,'é','e')
update localidade  set nome_localidade = replace(nome_localidade,'è','e')
update localidade  set nome_localidade = replace(nome_localidade,'é','e')
update localidade  set nome_localidade = replace(nome_localidade,'è','e')
update localidade  set nome_localidade = replace(nome_localidade,'í','i')
update localidade  set nome_localidade = replace(nome_localidade,'ì','i')
update localidade  set nome_localidade = replace(nome_localidade,'í','i')
update localidade  set nome_localidade = replace(nome_localidade,'ì','i')
update localidade  set nome_localidade = replace(nome_localidade,'ó','o')
update localidade  set nome_localidade = replace(nome_localidade,'ò','o')
update localidade  set nome_localidade = replace(nome_localidade,'ö','o')
update localidade  set nome_localidade = replace(nome_localidade,'õ','o')
update localidade  set nome_localidade = replace(nome_localidade,'ô','o')
update localidade  set nome_localidade = replace(nome_localidade,'ó','o')
update localidade  set nome_localidade = replace(nome_localidade,'ò','o')
update localidade  set nome_localidade = replace(nome_localidade,'ö','o')
update localidade  set nome_localidade = replace(nome_localidade,'õ','o')
update localidade  set nome_localidade = replace(nome_localidade,'ô','o')
update localidade  set nome_localidade = replace(nome_localidade,'ú','u')
update localidade  set nome_localidade = replace(nome_localidade,'ù','u')
update localidade  set nome_localidade = replace(nome_localidade,'ü','u')
update localidade  set nome_localidade = replace(nome_localidade,'ú','u')
update localidade  set nome_localidade = replace(nome_localidade,'ù','u')
update localidade  set nome_localidade = replace(nome_localidade,'ü','u')
update localidade  set nome_localidade = replace(nome_localidade,'ç','c')
update localidade  set nome_localidade = replace(nome_localidade,'ç','c')
update localidade  set nome_localidade = replace(nome_localidade,'ñ','n')
update localidade  set nome_localidade = replace(nome_localidade,'ñ','n')
*/