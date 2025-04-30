-- Cria a base dados
create or replace database fatec;

-- Seleciona a base de dados
use fatec;

-- Troca o delimitador
delimiter //

-- Cria o procedimento
create or replace procedure exibirgmsg()
begin
    select "Olá Mundo" as "Mensagem";
    select  
        "Faculdade" as "MensAagem1", 
        "de" as "Mensagem2", 
        "Tecnologia" as "Mensagem3", 
        "de" as "Mensagem4", 
        "Ourinhos" as "Mensagem5";
end//

-- Troca o delimitador
delimiter ;

-- Executa o procedimento
call exibirgmsg();

