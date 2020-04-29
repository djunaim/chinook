select top 3 Artist.Name, sum(Invoice.Total) as TotalSales
from Invoice
	join InvoiceLine
		on Invoice.InvoiceId = InvoiceLine.InvoiceId
	join Track
		on InvoiceLine.TrackId = Track.TrackId
	join Album
		on Track.AlbumId = Album.AlbumId
	join Artist
		on Album.ArtistId = Artist.ArtistId
group by Artist.ArtistId, Artist.Name
order by 2 desc