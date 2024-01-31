-- InterviewBit
-- https://www.interviewbit.com/problems/movie-character/

SELECT CONCAT(director_first_name,director_last_name) AS director_name,movie_title 
FROM
(SELECT movies_directors.movie_id AS movie_id, director_first_name, director_last_name,
movie_title,
role
FROM movies_directors
JOIN directors
ON movies_directors.director_id=directors.director_id
JOIN movies
ON movies.movie_id=movies_directors.movie_id
JOIN movies_cast
ON movies_cast.movie_id = movies.movie_id) AS temp
WHERE role='SeanMaguire';