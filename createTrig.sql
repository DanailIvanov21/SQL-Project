-- -- Trigger to set default term to 1 year if not provided
-- CREATE OR REPLACE TRIGGER BeforeInsertSetDefaultTerm
-- BEFORE INSERT ON Player
-- REFERENCING NEW AS NEWROW
-- FOR EACH ROW
-- BEGIN
--     IF NEWROW.term IS NULL THEN
--         SET NEWROW.term = 1; -- Default term if not provided
--     END IF;
-- END;

-- Trigger to ensure a player's salary is at least 30000.00
CREATE OR REPLACE TRIGGER BeforeInsertEnsureMinimumSalary
BEFORE INSERT ON Player
REFERENCING NEW AS NEWROW
FOR EACH ROW
BEGIN
    IF NEWROW.salary < 30000.00 THEN
        SET NEWROW.salary = 30000.00; -- Minimum salary
    END IF;
END;

-- Testing the triggers
INSERT INTO Player (name, shirt_number, year_of_separation, salary, term, NameManager, NamePosition, NumberCaptain)
VALUES ('Goshko', 69, 1990, 12000, null, 'John Doe', 'Forward', 1);

create or replace trigger tr_before_insert_sal_menager
before insert on MAINMANAGER
referencing new as n
for each row
    begin
        if n.SALARYMANAGER > 1000000 then
            set n.SALARYMANAGER = 1000000;
        end if;
    end;


insert into MAINMANAGER(namemanager, salarymanager) values ('Ivancho', 1000002);
