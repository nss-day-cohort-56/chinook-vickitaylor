-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT 
    i.InvoiceLineId,
    t.Name
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackId;