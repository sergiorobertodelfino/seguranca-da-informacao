/* Criação da base de dados */
create or replace database fatec;

/* Seleciona a base dados ativa */
use fatec;

/* Criação da tabela produtos */
create or replace table produtos (
    codigo smallint unsigned not null auto_increment,
    nome varchar(100) not null,
    quantidade tinyint not null,
    preco decimal(6, 2) unsigned not null,
    validade date,
    ativo boolean not null,
    primary key (codigo),
    unique key (nome) 
);