/* Cria uma base de dados */
create or replace database fatec;

/* Seleciona a base de dados ativa */
use fatec;

/* Cria uma tabela */
create or replace table produtos (
    nome date,
    cpf char(14) not null
);

/* Exibe a estrutura de uma tabela */
desc produtos;

/* Adiciona a coluna código */
alter table produtos 
add column codigo smallint unsigned not null first;

/* Adiciona a coluna quantidade */
alter table produtos
add column quantidade tinyint not null after nome;

/* Adiciona a coluna preço */
alter table produtos
add column preco decimal (6, 2) unsigned not null;

/* Remover a coluna cpf */
alter table produtos
drop column cpf;

/* Modificar a coluna nome */
alter table produtos
modify column nome varchar(100) not null;

/* Definir a coluna código como chave primária */
alter table produtos
add primary key (codigo);

/* Definir a chave código como auto incremento */
alter table produtos
modify column codigo smallint unsigned not null auto_increment;

/* Definir a coluna nome como chave única */
alter table produtos
add unique key (nome);

desc produtos;