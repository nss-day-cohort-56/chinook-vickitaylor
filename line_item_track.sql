-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.

-- edited so that it pulls the null track name in.

SELECT 
    i.InvoiceLineId,
    t.Name
FROM InvoiceLine i
LEFT JOIN Track t ON t.TrackId = i.TrackId;
