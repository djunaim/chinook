select Employee.FirstName + ' ' + Employee.LastName as SalesAgent,
	sum(Invoice.Total) as TotalSales
from Employee
	join Customer
		on Employee.EmployeeId = Customer.SupportRepId
	join Invoice
		on Customer.CustomerId = Invoice.CustomerId
where Employee.Title like '%sale%agent%'
group by Employee.EmployeeId, Employee.FirstName, Employee.LastName