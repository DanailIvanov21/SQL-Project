-- View to display players with their positions
CREATE or replace VIEW PlayerPositions AS
SELECT name AS player_name, shirt_number, NamePosition
FROM Player;

-- View to display managers with their total number of players
CREATE 0R REPLACE VIEW ManagerPlayerCount AS
SELECT NameManager, COUNT(*) AS player_count
FROM Player
GROUP BY NameManager;

-- Testing the views
SELECT * FROM PlayerPositions;
SELECT * FROM ManagerPlayerCount;
