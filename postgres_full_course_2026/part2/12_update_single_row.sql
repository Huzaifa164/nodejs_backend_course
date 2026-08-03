SELECT name, price, stock, sku
FROM products
WHERE sku = 'ELEC-WM-001';

UPDATE products
SET price = 1199.00, stock = 23
WHERE sku = 'ELEC-WM-001';

SELECT name, price, stock, sku
FROM products
WHERE sku = 'ELEC-WM-001';