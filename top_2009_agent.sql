select top 1 Employee.FirstName + ' ' + Employee.LastName as TopAgent09,
	sum(Invoice.Total) as TotalSales
from Employee
	join Customer
		on Employee.EmployeeId = Customer.SupportRepId
	join Invoice
		on Customer.CustomerId = Invoice.CustomerId
where Invoice.InvoiceDate between '2009-01-01' and '2009-12-31'
group by Employee.EmployeeId, Employee.FirstName, Employee.LastName
order by 2 desc