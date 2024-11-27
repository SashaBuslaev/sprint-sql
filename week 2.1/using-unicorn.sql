SELECT i.InvoiceId, InvoiceDate, TrackId, UnitPrice, Quantity 
FROM invoices i
JOIN invoice_items 
USING(InvoiceId)
ORDER BY UnitPrice DESC;