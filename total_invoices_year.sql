select sum(InvoiceId) as Invoices09
from Invoice
where InvoiceDate between '2009-01-01' and '2009-12-31'

select sum(invoiceid) as Invoices11
from Invoice
where InvoiceDate between '2011-01-01' and '2011-12-31'