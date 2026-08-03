-- null - missing/unknown value
-- u shouldn't check null using = null
-- IS NULL
-- IS NOT NULL

-- SELECT name, description
-- FROM products
-- WHERE description IS NULL;

-- SELECT name, description
-- FROM products
-- WHERE description IS NOT NULL;

SELECT name, category, is_active, description
FROM products 
WHERE is_active = true
AND description IS NULL;