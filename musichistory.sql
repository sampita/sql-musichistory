-- EXERCISES **********************************


-- Query all of the entries in the Genre table
SELECT * FROM Genre;

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
SELECT * FROM Artist;

INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ("Jimi Hendrix", 1965);

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
SELECT * FROM Album;

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ("Are You Experienced?", "05/12/1967", 3333, "Track Records", 28, 2);

-- Using the INSERT statement, add some songs that are on that album to the Song table.
SELECT * FROM Song;

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("Purple Haze", 120, "05/12/1967", 2, 28, 24);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("Hey Joe", 198, "05/12/1967", 2, 28, 24);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("The Wind Cries Mary", 166, "05/12/1967", 2, 28, 24);

-- Deleting duplicate Album:
DELETE FROM Album
WHERE AlbumId = 23;

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT s.Title as "Song Title", al.Title as "Album Title", ar.ArtistName as "Artist"
	FROM Song s, Album al, Artist ar;