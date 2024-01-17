-- DataLemur
-- https://datalemur.com/questions/top-fans-rank

SELECT * FROM
(SELECT name as artist_name,
DENSE_RANK() OVER (ORDER BY counts DESC) AS artist_rank 
FROM
(
WITH cte AS (
SELECT artists.artist_id as id,artists.artist_name as name,songs.song_id as songs,
global_song_rank.rank as ranks
FROM artists
JOIN songs
ON artists.artist_id=songs.artist_id
JOIN global_song_rank 
ON songs.song_id=global_song_rank.song_id
WHERE global_song_rank.rank<11)

SELECT name, COUNT(songs) as counts
FROM  cte
GROUP BY name
ORDER BY COUNT(songs) DESC) tab) tab1
WHERE artist_rank<6;