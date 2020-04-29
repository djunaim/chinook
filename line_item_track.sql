select InvoiceLine.InvoiceLineId as LineItem, Track.Name as TrackName
from InvoiceLine
	join Track
		on InvoiceLine.TrackId = Track.TrackId
order by 1