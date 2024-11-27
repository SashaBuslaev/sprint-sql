UPDATE tracks 
SET UnitPrice = UnitPrice * 1.1
WHERE Milliseconds > 360000 AND TrackId != (SELECT TrackId FROM invoice_items);