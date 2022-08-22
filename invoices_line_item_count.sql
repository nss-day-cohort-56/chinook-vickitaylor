-- Provide a query that shows all Invoices. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice

SELECT 
    i.InvoiceId,
    COUNT (*) as LineItemsPerInvoice
FROM Invoice i
LEFT JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId;