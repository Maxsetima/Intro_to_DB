-- Use the alx_book_store database
USE alx_book_store;

-- Insert multiple rows into the customer table
UPDATE customers
SET customer_name = 'Blessing Malik', email = 'bmalik@sandtech.com', address = '124 Happiness Ave.'
WHERE customer_id = 2;

UPDATE customers
SET customer_name = 'Obed Ehoneah', email = 'eobed@sandtech.com', address = '125 Happiness Ave.'
WHERE customer_id = 3;

UPDATE customers
SET customer_name = 'Nehemial Kamolu', email = 'nkamolu@sandtech.com', address = '126 Happiness Ave.'
WHERE customer_id = 4;

