select Track.Name as Track, Album.Title as Album, MediaType.Name as MediaType, Genre.Name as Genre
from Track
	join Album
		on Track.AlbumId = Album.AlbumId
	join MediaType
		on Track.MediaTypeId = MediaType.MediaTypeId
	join Genre
		on Track.GenreId = Genre.GenreId
order by 1