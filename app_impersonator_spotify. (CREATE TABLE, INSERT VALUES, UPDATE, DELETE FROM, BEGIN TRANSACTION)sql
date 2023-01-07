/* CREATE TABLE, INSERT VALUES, UPDATE, DELETE FROM, BEGIN TRANSACTION */

CREATE TABLE spotify_playlist (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
title TEXT,
artist TEXT,
song_order INTEGER);

INSERT INTO spotify_playlist (title, artist, song_order) VALUES 
("Livin' La Vida Loca", 'Ricky Martin',1);
INSERT INTO spotify_playlist (title, artist, song_order) VALUES
('Bohemian Rhapsody', 'Queen',2);
INSERT INTO spotify_playlist (title, artist, song_order) VALUES
('Girls on Film', 'Duran Duran',3);
INSERT INTO spotify_playlist (title, artist, song_order) VALUES
('1985', 'Bowling for Soup', 4);
INSERT INTO spotify_playlist (title, artist, song_order) VALUES
('Eye of the Tiger', 'Survivor', 5);

select * from spotify_playlist ORDER BY song_order;

START TRANSACTION;
UPDATE spotify_playlist SET song_order = 1 where id = 5;
UPDATE spotify_playlist SET song_order = 2 where id = 1;
UPDATE spotify_playlist SET song_order = 3 where id = 2;
UPDATE spotify_playlist SET song_order = 4 where id = 3;
UPDATE spotify_playlist SET song_order = 5 where id = 4;
COMMIT;

select * from spotify_playlist ORDER BY song_order;

DELETE FROM spotify_playlist WHERE id = 4;

select * from spotify_playlist order by song_order;

