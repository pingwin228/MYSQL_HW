-- 1.
select count(*) as movies 
from movies 
where company_id = 1; 
-- 2.
select count(*) as movies 
from movies 
where director_id = 2; 
-- 3. И здесь указан, а во втором пункте пропущен
SELECT COUNT(*) AS movies
FROM movies
WHERE year >= YEAR(CURDATE()) - 20;
-- 4. Главное чтобы были два дефиса и цифра с точкой
SELECT DISTINCT movies.title AS genre
FROM directors
JOIN movies ON directors.id = movies.director_id
WHERE directors.full_name = 'Стивен Спилберг';
-- 5.
SELECT movies.title, movies.genre_id, directors.full_name AS director
FROM movies
JOIN directors ON movies.director_id = directors.id
ORDER BY movies.budget DESC
LIMIT 5;
-- 6.
SELECT directors.full_name, COUNT(movies.id) AS movie_count
FROM directors
JOIN movies ON directors.id = movies.director_id
GROUP BY directors.id, directors.full_name
ORDER BY movie_count DESC
LIMIT 1;
-- 7.
SELECT title, genre_id
FROM movies
WHERE company_id = (
    SELECT company_id
    FROM movies
    GROUP BY company_id
    ORDER BY SUM(budget) DESC
    LIMIT 1
);
-- 8.
SELECT AVG(budget) as AverageBudget
FROM movies
JOIN companies ON movies.company_id = companies.id
WHERE companies.title = 'Warner Bros';
-- 9.
SELECT genre_id, COUNT(*) AS NumberOfMovies, AVG(budget) AS AverageBudget
FROM movies
GROUP BY genre_id;
-- 10.
DELETE FROM movies 
WHERE title = 'Дикие истории' AND genre_id = '7' AND year = 2014;











