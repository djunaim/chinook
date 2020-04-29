select InvoiceLine.TrackId, sum(InvoiceLine.Quantity) as TimesPurchased
from Invoice
	join InvoiceLine
		on Invoice.InvoiceId = InvoiceLine.InvoiceId
where Invoice.InvoiceDate between '2013-01-01' and '2013-12-31'
group by InvoiceLine.InvoiceLineId, InvoiceLine.TrackId, InvoiceLine.Quantity