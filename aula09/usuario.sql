-- Cria ou substitui um usuário chamado 'sergio' que pode se conectar a partir do localhost,
-- definindo sua senha como 'q1w2e3r4'.
create or replace user sergio@localhost
identified by 'q1w2e3r4';

-- Concede todas as permissões (ALL) em todos os bancos de dados e tabelas (*.*)
-- para o usuário 'sergio' no localhost.
-- O 'WITH GRANT OPTION' permite que esse usuário conceda as mesmas permissões para outros usuários.
grant all
on *.*
to sergio@localhost
with grant option;