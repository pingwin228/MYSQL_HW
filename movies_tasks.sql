-- 1.
SELECT COUNT(*) 
FROM tmp
WHERE title LIKE '%Universal Pictures%';
-- 2.
SELECT COUNT(*) 
FROM tmp
WHERE director = 'Френсис Форд Коппола';
-- 3.
SELECT COUNT(*) 
FROM tmp
WHERE year > YEAR(CURDATE()) - 20;
-- 4.
SELECT DISTINCT genre 
FROM tmp
WHERE id IN (SELECT id FROM directors WHERE director = 'Стивен Спилберг');
-- 5.
SELECT title, genre, director 
FROM tmp
ORDER BY budget DESC 
LIMIT 5;
-- 6.
SELECT director, COUNT(*) AS movies_count 
FROM tmp
GROUP BY director 
ORDER BY movies_count DESC 
LIMIT 1;
-- 7.
SELECT title, genre 
FROM tmp 
WHERE company = 
    (SELECT company 
    FROM tmp 
    GROUP BY company
    ORDER BY SUM(budget) DESC 
    LIMIT 1);
-- 8.
SELECT AVG(budget) 
FROM tmp 
WHERE company LIKE '%Warner Bros%';
-- 9.
SELECT genre, COUNT(*) AS movie_count, AVG(budget) AS avg_budget 
FROM tmp 
GROUP BY genre;
-- 10.
DELETE FROM tmp 
WHERE title = 'Дикие истории' AND year = 2014 AND genre = 'Комедия';