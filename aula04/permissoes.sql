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

-- Atribuir permissões para um usuário
grant create, insert, select, update
on *.*
to sergio@localhost;

grant all 
on *.*
to patricia@localhost
with grant option;

-- Visualizar as permissões de um usuário
show grants for sergio@localhost;
show grants for patricia@localhost;