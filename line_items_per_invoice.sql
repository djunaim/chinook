select InvoiceId, count(*) as LineItemsPerInvoice
from InvoiceLine
group by InvoiceId