/**
1, "Polyhedral Dice Set", 6.95, 7, 79
2, "Dice Tray", 9.95, 5, 50
3, "Player's Handbook",  49.95, 1, 71
4, "Dungeon Master's Guide", 49.95, 1, 54
5, "Monster Manual", 49.95, 1, 53
6, "Starter Set", 19.95, 1, 89
7, "Essential's Kit", 24.99, 1, 65
8, "Tasha's Cauldron of Everything", 49.95, 1, 44
9, "Xanathar's Guide to Everything" , 49.95, 1, 46
10, "Hoard of the Dragon Queen", 29.95, 1, 42
11, "Sword Coast Adventurer's Guide", 39.95, 1, 46
12, "Spelljammer: Adventures in Space", 69.95, 2, 68
13, "Spells Cards", 18.95, 6, 51
14, "Miniatures", 5.95, 15, 95
15, "Class Tokens", 14.95, 12, 66
**/

CREATE TABLE game_store (id INTEGER PRIMARY KEY, item TEXT, price REAL, varieties INTEGER, quantity INTEGER);

INSERT INTO game_store VALUES(1, "Polyhedral Dice Set", 6.95, 7, 79);
INSERT INTO game_store VALUES(2, "Dice Tray", 9.95, 5, 50);
INSERT INTO game_store VALUES(3, "Player's Handbook",  49.95, 1, 71);
INSERT INTO game_store VALUES(4, "Dungeon Master's Guide", 49.95, 1, 54);
INSERT INTO game_store VALUES(5, "Monster Manual", 49.95, 1, 53);
INSERT INTO game_store VALUES (6, "Starter Set", 19.95, 1, 89);
INSERT INTO game_store VALUES (7, "Essential's Kit", 24.99, 1, 65);
INSERT INTO game_store VALUES(8, "Tasha's Cauldron of Everything", 49.95, 1, 44);
INSERT INTO game_store VALUES (9, "Xanathar's Guide to Everything" , 49.95, 1, 46);
INSERT INTO game_store VALUES(10, "Hoard of the Dragon Queen", 29.95, 1, 42);
INSERT INTO game_store VALUES(11, "Sword Coast Adventurer's Guide", 39.95, 1, 46);
INSERT INTO game_store VALUES(12, "Spelljammer: Adventures in Space", 69.95, 2, 68);
INSERT INTO game_store VALUES(13, "Spells Cards", 18.95, 6, 51);
INSERT INTO game_store VALUES(14, "Miniatures", 5.95, 15, 95);
INSERT INTO game_store VALUES(15, "Class Tokens", 14.95, 12, 66);

SELECT *
From game_store
ORDER BY price;

SELECT sum(quantity) 
FROM game_store
WHERE price>20;


