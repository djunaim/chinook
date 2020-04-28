select distinct Employee.FirstName + ' ' + Employee.LastName as FullName,
	Invoice.InvoiceId
from Employee
	join Invoice
		on Employee.Country = Invoice.BillingCountry
where Employee.Title like '%sales%agent%'