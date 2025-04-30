-- Cria a base dados
create or replace database fatec;

-- Seleciona a base de dados
use fatec;

-- Troca o delimitador
delimiter //

-- Cria o procedimento
create or replace procedure exibirgmsg ()
begin
    select "Olá Mundo";
end //

-- Troca o delimitador
delimiter ;

-- Executa o procedimento
call exibirgmsg ();

