create or replace database fatec;

use fatec;

delimiter $$

create or replace procedure calcularmedia(
    in prova decimal (3,1), 
    in trabalho decimal (3,1),
    out media decimal (3,1))
begin
    declare mp decimal (3,1);
    declare mt decimal (3,1);

    set mp = prova * 0.7;
    set mt = trabalho * 0.3;
    set media = mp + mt;
end$$

delimiter ;

call calcularmedia(8.5, 6.0, @media);
select @media as 'Média Final';