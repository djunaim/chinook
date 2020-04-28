select Customer.FirstName, Customer.LastName, Customer.Country
from Customer
where Customer.Country != 'USA'