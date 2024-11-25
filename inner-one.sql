SELECT 
e.FirstName || ' ' || e.LastName AS EmployeeName,
c.FirstName || ' ' || c.LastName AS CustomerName,
i.InvoiceId, i.InvoiceDate,
t.Name AS TrackName,
al.Title AS AlbumTitle,
ar.Name AS ArtistName,
g.Name AS GenreName,
m.Name AS MediaTypeName
FROM employees e 
JOIN customers c ON e.EmployeeId = c.SupportRepId
JOIN invoices i ON i.CustomerId = c.CustomerId
JOIN invoice_items ii ON ii.InvoiceId = i.InvoiceId
JOIN tracks t ON t.TrackId = ii.TrackId 
JOIN media_types m ON m.MediaTypeId = t.MediaTypeId 
JOIN albums al ON al.AlbumId = t.AlbumId 
JOIN artists ar ON ar.ArtistId = al.ArtistId 
JOIN genres g ON g.GenreId = t.GenreId 
ORDER BY EmployeeName, CustomerName, InvoiceDate;