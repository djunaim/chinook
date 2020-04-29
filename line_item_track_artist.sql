select InvoiceLine.InvoiceLineId,
	Track.Name as TrackName, 
	Artist.Name as ArtistName
from InvoiceLine
	join Track
		on InvoiceLine.TrackId = Track.TrackId
	join Album
		on Track.AlbumId = Album.AlbumId
	join Artist
		on Album.ArtistId = Artist.ArtistId
order by 1
