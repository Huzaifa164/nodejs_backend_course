-- AND -> every condition must be true.
-- OR -> at least one condition must be true.
-- NOT -> revers/exclude a condition

-- products where it is electronics but price > 1000

-- SELECT name, category, price
-- FROM products
-- WHERE category = 'Electronics'
-- AND price > 1000;

-- products where category is electronics or furniture

-- SELECT name, category, price
-- FROM products
-- WHERE category = 'Electronics'
-- OR category = 'Furniture';

-- SELECT name, category
-- FROM products
-- WHERE NOT category = 'Furniture';

-- SELECT name, category, price, stock
-- FROM products
-- WHERE (category = 'Electronics' OR category = 'Furniture')
-- AND stock > 0;

SELECT name, price, stock, is_active
FROM products
WHERE is_active = true
AND (price < 1000 OR stock >= 100);