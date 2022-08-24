-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(*)
FROM Invoice i
WHERE i.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
    OR i.InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31";

-- 🎣🎣 trying other date format🦦🦦

SELECT COUNT(*)
FROM Invoice i
WHERE strftime("%Y", i.InvoiceDate) = "2009" 
    OR strftime("%Y", i.InvoiceDate) = "2011";
