select Customer.FirstName + ' ' + Customer.LastName as FullName, 
	Invoice.InvoiceId, 
	Invoice.InvoiceDate, 
	Customer.Country as BillingCountry
from Customer
	join Invoice
		on Customer.CustomerId = Invoice.CustomerId
where Customer.Country = 'brazil'