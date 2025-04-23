-- Criar um banco de dados
create or replace database fatec;

-- Selecionar um banco de dados
use fatec;

-- Criar uma tabela
create or replace table categorias (
    codigo tinyint unsigned not null auto_increment,
    nome varchar(100) not null,
    primary key (codigo),
    unique key (nome)
);

-- Exibir uma tabela
desc categorias;

-- Criar um usuário
create or replace user sergio@localhost
identified by 'q1w2e3r4';
create or replace user patricia@localhost
identified by 'toor';

-- Visualizar as permissões de um usuário
show grants for sergio@localhost;
show grants for patricia@localhost;

-- Criar os grupos
create or replace role administrador;
create or replace role usuario;

-- Visualizar as permissões dos grupos
show grants for administrador;
show grants for usuario;

-- Definir as permissões dos grupos
grant all
on *.*
to administrador
with grant option;

grant insert, update, select
on fatec.*
to usuario;

-- Visualizar as permissões dos grupos
show grants for administrador;
show grants for usuario;

-- Adicionar os usuários aos grupos
grant administrador
to sergio@localhost;

grant usuario
to patricia@localhost;

-- Visualizar as permissões de um usuário
show grants for sergio@localhost;
show grants for patricia@localhost;