select sum(Total) as TotalSales09
from Invoice
where InvoiceDate between '2009-01-01' and '2009-12-31'

select sum(Total) as TotalSales11
from Invoice
where InvoiceDate between '2011-01-01' and '2011-12-31'