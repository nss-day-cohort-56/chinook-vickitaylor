-- Provide a query that shows the total number of invoices per country.

SELECT 
    BillingCountry,
    COUNT (*) as TotalInvoices
FROM Invoice
GROUP BY BillingCountry;