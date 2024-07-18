SET SCHEMA FN24_45784;
/*
Player (name, shirt number, year of separation, salary, term, NameManager, NamePosition, NumberCaptain)
Position(PositionName, FieldPosition)
MainManager(NameManager, SalaryManager)
*/
    CREATE TABLE Player (
    name VARCHAR(20),
    shirt_number INT NOT NULL,
    year_of_separation INT,
    salary DECIMAL(10, 2),
    term INT,
    NameManager VARCHAR(20),
    NamePosition VARCHAR(15),
    NumberCaptain INT

);

CREATE TABLE Position (
    NamePosition VARCHAR(15) NOT NULL,
    FieldPosition VARCHAR(20)
);


CREATE TABLE MainManager (
    NameManager VARCHAR(20) NOT NULL,
    SalaryManager DECIMAL(10, 2)
);
/*
Limits - Primary key
Player: PK(shirt_number)
Position: PK(PositionName)
MainManager: PK(NameManager)
*/
ALTER TABLE Player ADD PRIMARY KEY(shirt_number);
ALTER TABLE Position ADD PRIMARY KEY(NamePosition);
ALTER TABLE MainManager ADD PRIMARY KEY(NameManager);


/*
Foreign keys
Player: FK(ManagerName) -> MainManager(ManagerName)
Player: FK(PositionName) -> Position (PositionName)
Player: FK(CaptainNumber) -> Player(CaptainNumber)
 */


ALTER TABLE Player ADD FOREIGN KEY (NameManager) REFERENCES MainManager(NameManager);
ALTER TABLE Player ADD FOREIGN KEY (NamePosition) REFERENCES Position(NamePosition);
ALTER Table Player ADD FOREIGN KEY (NumberCaptain) REFERENCES Player(shirt_number);

