-- SELECT name, category, price, is_active
-- FROM products
-- WHERE category = 'Stationery';

-- UPDATE products
-- SET price = ROUND(price * 1.10, 2)
-- WHERE category = 'Stationery';

-- SELECT name, category, price, is_active
-- FROM products
-- WHERE category = 'Stationery';

UPDATE products
SET is_active = FALSE
WHERE stock = 0;

SELECT name, stock, is_active
FROM products
WHERE is_active = FALSE;