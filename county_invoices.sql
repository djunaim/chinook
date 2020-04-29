select BillingCountry, count(invoiceid) as NumOfInvoices
from Invoice
group by BillingCountry