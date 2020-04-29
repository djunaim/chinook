select top 1 Employee.FirstName + ' ' + Employee.LastName as TopAgent,
	sum(Invoice.Total) as TotalSales
from Employee
	join Customer
		on Employee.EmployeeId = Customer.SupportRepId
	join Invoice
		on Customer.CustomerId = Invoice.CustomerId
where Employee.Title like '%sale%agent%'
group by Employee.EmployeeId, Employee.FirstName, Employee.LastName
order by 2 desc