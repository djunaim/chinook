select Employee.FirstName + ' ' + Employee.LastName as SalesAgent,
	count(Customer.CustomerId) as CustomerCount
from Employee
	join Customer
		on Employee.EmployeeId = Customer.SupportRepId
group by Employee.EmployeeId, Employee.FirstName, Employee.LastName