-- Which sales agent made the most in sales in 2010?
SELECT employees.FirstName, employees.LastName FROM employees LEFT OUTER JOIN customers ON employees.EmployeeId = customers.SupportRepId LEFT OUTER JOIN invoices ON customers.CustomerId = invoices.CustomerId WHERE invoiceDate LIKE '2010%' GROUP BY employees.FirstName ORDER BY COUNT(employees.FirstName) DESC LIMIT 1;
/*
link to referenced code (ORDER BY COUNT() & LIMIT):
https://stackoverflow.com/questions/12235595/find-most-frequent-value-in-sql-column
*/