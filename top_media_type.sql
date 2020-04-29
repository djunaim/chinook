select top 1 MediaType.Name as MediaType, sum(InvoiceLine.Quantity) as TotalQty
from InvoiceLine
	join Track
		on InvoiceLine.TrackId = Track.TrackId
	join MediaType
		on Track.MediaTypeId = MediaType.MediaTypeId
group by MediaType.MediaTypeId, MediaType.Name
order by 2 desc