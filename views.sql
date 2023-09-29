--1
--view to show each genre's movies
CREATE VIEW GenreMovies AS
SELECT G.genre_title, P.name
FROM Genre AS G, Product AS P
WHERE G.productId = P.id;

--testing view 1
SELECT * FROM GenreMovies


--2
--some data updating for better result
UPDATE Product
SET likes_number = 20, dislikes_number = 5
WHERE id = 1;

UPDATE Product
SET likes_number = 3, dislikes_number = 7
WHERE id = 4;

-- view to show each movie and users satisfaction rating
CREATE VIEW MovieUserRating AS
SELECT P.likes_number, P.dislikes_number, (P.likes_number * 1.0 / NULLIF(P.dislikes_number + P.likes_number, 0)) AS user_rating 
FROM Movie AS M, Product AS P
WHERE M.productId = P.id

--testing view 2
SELECT * FROM MovieUserRating;


--3
--view to show the number of comments of each person
CREATE VIEW CommentsNumberByEachPerson AS
SELECT C.personId, COUNT(*) AS number
FROM Comment AS C JOIN Person AS P ON C.personId = P.id
GROUP BY C.personId;

--testing view 3
SELECt * FROM CommentsNumberByEachPerson;


--4
--view to show different episodes of a serial
CREATE VIEW SerialEpisodes AS
SELECT T2.name AS serial_name ,T1.name AS episode_name
FROM
(SELECT *
FROM Movie AS M, Product AS P
WHERE M.productId = P.id) AS T1
JOIN
(SELECT *
FROM Serial AS S, Product AS P
WHERE S.productId = P.id) AS T2
ON T1.serialId = T2.id;

--testing view 4
SELECT * FROM SerialEpisodes;