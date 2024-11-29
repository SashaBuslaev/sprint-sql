DELETE FROM tracks 
WHERE UnitPrice > 0.99 AND TrackId != (SELECT TrackId FROM invoice_items)