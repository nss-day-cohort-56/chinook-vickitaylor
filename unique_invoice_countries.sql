-- Provide a query showing a unique (distinct) list of billing countries from the Invoice table.

SELECT DISTINCT BillingCountry
FROM Invoice;
-- ORDER BY lower(BillingCountry)