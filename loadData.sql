-- Switch to the correct schema
SET SCHEMA FN24_45784;

-- Insert sample data into MainManager
INSERT INTO MainManager (NameManager, SalaryManager) VALUES
('John Doe', 50000.00),
('Jane Smith', 55000.00),
('Alice Johnson', 52000.00),
('Bob Brown', 53000.00);

-- Insert sample data into Position
INSERT INTO Position (NamePosition, FieldPosition) VALUES
('Forward', 'Offense'),

('Defender', 'Defense'),
('Midfielder', 'Midfield'),
('Goalkeeper', 'Goal');

-- Insert sample data into Player
INSERT INTO Player (name, shirt_number, year_of_separation, salary, term, NameManager, NamePosition, NumberCaptain) VALUES
('Player One', 1, 2000, 20000.00, 3, 'John Doe', 'Forward', 1),
('Player Two', 2, 2001, 22000.00, 2, 'Jane Smith', 'Defender', 1),
('Player Three', 3, 1999, 21000.00, 4, 'Alice Johnson', 'Midfielder', 1),
('Player Four', 4, 1997, 23000.00, 5, 'John Doe', 'Goalkeeper', 1),
('Player Five', 5, 1999, 24000.00, 3, 'Jane Smith', 'Forward', 1),
('Player Six', 6, 2000, 25000.00, 4, 'Alice Johnson', 'Defender', 1),
('Player Seven', 7, 2005, 26000.00, 2, 'Bob Brown', 'Midfielder', 1),
('Player Eight', 8, 2006, 27000.00, 5, 'John Doe', 'Goalkeeper', 1),
('Player Nine', 9, 1996, 28000.00, 3, 'Jane Smith', 'Forward', 1),
('Player Ten', 10, 1999, 29000.00, 4, 'Alice Johnson', 'Defender', 1),
('Player Eleven', 11, 1995, 30000.00, 2, 'Bob Brown', 'Midfielder', 1),
('Player Twelve', 12, 1990, 31000.00, 5, 'John Doe', 'Goalkeeper', 1),
('Player Thirteen', 13, 1997, 32000.00, 3, 'Jane Smith', 'Forward', 1),
('Player Fourteen', 14, 1996, 33000.00, 4, 'Alice Johnson', 'Defender', 1),
('Player Fifteen', 15, 1999, 34000.00, 2, 'Bob Brown', 'Midfielder', 1),
('Player Sixteen', 16, 1998, 35000.00, 5, 'John Doe', 'Goalkeeper', 1),
('Player Seventeen', 17, 1993, 36000.00, 3, 'Jane Smith', 'Forward', 1),
('Player Eighteen', 18, 2004, 37000.00, 4, 'Alice Johnson', 'Defender', 1),
('Player Nineteen', 19, 2007, 38000.00, 2, 'Bob Brown', 'Midfielder', 1),
('Player Twenty', 20, 2003, 39000.00, 5, 'John Doe', 'Goalkeeper', 1);

DELETE FROM PLAYER WHERE 1=1;
