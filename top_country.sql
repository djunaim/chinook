select top 1 BillingCountry as Country, sum(Total) as TotalSales
from Invoice
group by BillingCountry
order by 2 desc