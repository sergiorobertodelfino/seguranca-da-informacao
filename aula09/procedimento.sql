-- source aula09/procedimento.sql

-- Cria ou substitui (se já existir) o banco de dados chamado 'fatec'
create or replace database fatec;

-- Define que os próximos comandos serão executados no banco de dados 'fatec'
use fatec;

-- Altera o delimitador padrão de comandos SQL de ';' para '//' 
-- Isso é necessário para definir procedimentos armazenados que usam ';' dentro deles
delimiter //

-- Cria ou substitui (se já existir) um procedimento armazenado chamado 'somar'
-- O procedimento recebe dois parâmetros de entrada (x e y) do tipo decimal com 10 dígitos no total e 2 casas decimais
-- E um parâmetro de saída (z), também decimal, que receberá o resultado da soma de x e y
create or replace procedure somar (
    in x decimal (10,2),
    in y decimal (10,2),
    out z decimal (10,2))
begin
    -- Atribui à variável de saída 'z' a soma dos valores de entrada 'x' e 'y'
    set z = x + y;
end//

-- Restaura o delimitador padrão para ';'
delimiter ;