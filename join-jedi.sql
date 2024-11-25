SELECT FirstName, LastName, InvoiceId FROM Customers c
JOIN Invoices i ON c.CustomerId = i.CustomerId
ORDER BY FirstName asc;
