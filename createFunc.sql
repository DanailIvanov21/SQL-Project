set schema FN24_45784;

create or replace function f_get_maneger (p_shirt int)
returns varchar(20)
begin
    declare name varchar(20);
    set name = (select NAMEMANAGER from player where SHIRT_NUMBER = p_shirt);
    return name;
end;

values FN24_45784.f_get_maneger(2);

create or replace function f_get_player_on_position (p_position varchar(15))
returns table (name varchar(20), shirt_number int, salary decimal(20,2))
return (select name, shirt_number, salary
        from PLAYER
        where NAMEPOSITION = p_position);

select * from table(FN24_45784.F_GET_PLAYER_ON_POSITION('Forward')) t;
