select Invoice.InvoiceId, count(InvoiceLine.InvoiceLineId) as NumOfInvoiceLineItems
from Invoice
	join InvoiceLine
		on Invoice.InvoiceId = InvoiceLine.InvoiceId
group by Invoice.InvoiceId