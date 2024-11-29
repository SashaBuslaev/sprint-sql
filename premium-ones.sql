WITH ABOVE_avg_tracks as (
    SELECT GenreId,AVG(UnitPrice) as genreAVG_price
    FROM tracks
    GROUP BY GenreId
),
Purchased_twotimes as (
    SELECT TrackId,COUNT(*) as PurchaseCount FROM invoice_items
    GROUP BY TrackId
)

SELECT G.Name,Milliseconds/1000 as Seconds ,UnitPrice,PurchaseCount
FROM tracks t
INNER JOIN ABOVE_avg_tracks using(GenreId)
INNER JOIN genres g using (GenreId)
INNER JOIN Purchased_twotimes using (TrackId)
WHERE UnitPrice>genreAVG_price
and Milliseconds>5*60000
and GenreId  != 13
and PurchaseCount>=2;