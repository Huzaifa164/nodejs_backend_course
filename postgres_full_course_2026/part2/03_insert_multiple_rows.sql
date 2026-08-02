INSERT INTO products (name, category, price, stock, sku, description)
VALUES
('Laptop stand 5', 'electronics', 100, 45, 'ELEC-LAP-100', 'Laptop stand 5 desc'),
('Laptop stand 6', 'electronics', 100, 45, 'ELEC-LAP-101', 'Laptop stand 6 desc'),
('Laptop stand 7', 'electronics', 100, 45, 'ELEC-LAP-102', 'Laptop stand 7 desc');

SELECT name, category, price, stock, sku
FROM products 
WHERE sku IN ('ELEC-LAP-100', 'ELEC-LAP-101', 'ELEC-LAP-102');