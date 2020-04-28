select Customer.FirstName + ' ' + Customer.LastName as CustomerName,
	Employee.FirstName + ' ' + Employee.LastName as SaleAgentName,
	Customer.Country,
	Invoice.Total as InvoiceTotal
from Customer
	join Employee
		on Customer.SupportRepId = Employee.EmployeeId
	join Invoice
		on Customer.CustomerId = Invoice.CustomerId
where Employee.Title like '%sale%agent%'
