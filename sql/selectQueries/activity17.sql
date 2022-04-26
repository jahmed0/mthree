
USE personaltrainer;

SELECT
	InvoiceId,
    Description,
    Price,
    Quantity,
    Price * Quantity AS line_item_total
FROM invoicelineitem
WHERE Price * Quantity BETWEEN 15 AND 25;