SELECT c.CustomerId, c.FirstName || " " || c.LastName AS CustomerName, e.FirstName || " " || e.LastName AS SupportRepTitle
FROM Customers c 
JOIN Employees e ON c.SupportRepId = e.EmployeeId
ORDER BY CustomerName ASC;

SELECT InvoiceId, InvoiceDate, FirstName || " " || LastName AS CustomerName
FROM Invoices i
JOIN Customers c ON i.CustomerId = c.CustomerId 
ORDER BY CustomerName DESC;
 
SELECT TrackId, t.Name AS TrackName, al.Title AS AlbumTitle, ar.Name AS ArtistName 
FROM tracks t 
JOIN albums al ON t.TrackId = al.TrackId
JOIN artists ar ON al.ArtistId = ar.ArtistId
ORDER BY TrackName DESC;

SELECT InvoiceLineId, t.Name AS TrackName, al.Title AS AlbumTitle, ar.Name AS ArtistName
FROM invoice_items i
JOIN tracks t ON t.TrackId = i.TrackId
JOIN albums al ON al.AlbumId = t.AlbumId
JOIN artists ar ON ar.ArtistId = al.ArtistId
ORDER BY AlbumTitle ASC; 