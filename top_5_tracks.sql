select Track.Name, sum(InvoiceLine.Quantity) as TimesPurchased
from InvoiceLine
	join Track
		on InvoiceLine.TrackId = Track.TrackId
group by InvoiceLine.InvoiceLineId, Track.Name
order by 2 desc