select BillingCountry as Country, sum(Total) as TotalSales
from Invoice
group by BillingCountry