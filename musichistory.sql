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
SELECT Song.Title as "Song Title", Album.Title as "Album Title", ar.ArtistName as "Artist"
	FROM Song
	LEFT JOIN Album
	ON Song.AlbumId = Album.AlbumId
	LEFT JOIN Artist ar
	ON Song.ArtistId = ar.ArtistId
	WHERE Album.AlbumId = 24;

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT Song.AlbumId, Album.Title, COUNT() as "# of Songs"
	FROM Song
	INNER JOIN Album ON Album.AlbumId = Song.AlbumId
	GROUP BY Album.AlbumId;

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT Song.ArtistId, Artist.ArtistName, COUNT() as "# of Songs"
	FROM Song
	INNER JOIN Artist ON Artist.ArtistId = Song.ArtistId
	GROUP BY Song.ArtistId;

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT Song.GenreId, Genre.Label, COUNT() as "# of Songs"
	FROM Song
	INNER JOIN Genre ON Genre.GenreId = Song.GenreId
	GROUP BY Song.GenreId;

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT Title, MAX(AlbumLength) as "Album Length"
FROM Album;

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
SELECT Title, MAX(SongLength) as "Song Length"
FROM Song;

-- Modify the previous query to also display the title of the album.
SELECT Song.Title as "Song Title", Album.Title as "Album Title", MAX(SongLength)
FROM Song
INNER JOIN Album on Album.AlbumId = Song.AlbumId;