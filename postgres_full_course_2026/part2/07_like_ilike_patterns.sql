-- like - case sensitive pattern match
-- ilike - case insensitive pattern match
-- % means any no of chars
-- _ exactlly one char

-- the % after wireless means anything can come aftre it
-- SELECT name, price
-- FROM products
-- WHERE name LIKE 'Wireless%';

-- Desk, desk, DESK
-- SELECT name, category, price
-- FROM products
-- WHERE name ILIKE '%desk%';

-- SELECT name, category
-- FROM products
-- WHERE category ILIKE 'electronics';

SELECT name, category, description
FROM products
WHERE name ILIKE '%chair%'
OR description ILIKE '%chair%';