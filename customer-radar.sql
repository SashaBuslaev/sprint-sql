WITH CustomerSpending AS (
    SELECT
        c.CustomerId,
        c.FirstName,
        c.LastName,
        SUM(i.Total) AS TotalSpent, 
        count(distinct t.AlbumId) as AlbumsCount,
        count(distinct ii.TrackId) as TracksCount
    FROM customers c
    JOIN invoices i ON c.CustomerId = i.CustomerId
    join invoice_items ii on i.InvoiceId = ii.InvoiceId
    join tracks t on ii.TrackId = t.TrackId
    GROUP BY c.CustomerId
),
AverageSpending AS (
    SELECT AVG(Total) AS AvgSpending
    FROM invoices
)
SELECT
    cs.FirstName,
    cs.LastName, 
    cs.AlbumsCount,
    cs.TracksCount,
    cs.TotalSpent
FROM CustomerSpending cs
JOIN AverageSpending avg_spend ON cs.TotalSpent > avg_spend.AvgSpending
WHERE cs.AlbumsCount >= 3
ORDER BY cs.TotalSpent DESC;
 