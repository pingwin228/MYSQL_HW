-- 1. 
SELECT SUM(amount) AS totalunits
FROM hardware;
-- 2.
SELECT title
FROM hardware
WHERE amount = 0;
-- 3.
SELECT AVG(price) AS 'средняя цена'
FROM hardware
WHERE title LIKE '%Монитор%';
-- 4.
SELECT title, price
FROM hardware
WHERE title LIKE '%Клавиатура%'
ORDER BY price ASC;
-- 5.
SELECT COUNT(*) AS totalitems, tag
FROM hardware
WHERE tag IS NOT NULL
GROUP BY tag
ORDER BY totalitems DESC;
-- 6.
SELECT COUNT(*) AS discount
FROM hardware
WHERE tag = 'discount';
-- 7.
SELECT title, price
FROM hardware
WHERE tag = 'new'
ORDER BY price DESC
LIMIT 1;
-- 8.
INSERT INTO hardware (title, price, amount, tag)
VALUES ('Ноутбук Lenovo 2BXKQ7E9XD', 54500, 1, 'new');
-- 9.
DELETE FROM hardware
WHERE id = 18 AND title = 'Очки PS VR 2';