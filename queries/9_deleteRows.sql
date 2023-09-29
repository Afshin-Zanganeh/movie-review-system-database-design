--delete an admin
INSERT INTO Admin
(personId)
VALUES (2003);
DELETE FROM Admin
WHERE personId = 2003;

--delete comments that contains special words
DELETE FROM Comment
WHERE text LIKE '%shit%';

--delete a specific FAQ
DELETE FROM FAQ
WHERE id = 3;
INSERT INTO FAQ
(id, question, answer, adminId)
VALUES (3, 'Can I Watch shows offline?', 'No. shows on are usually streamed online and require a good internet connection.', 1003);

--delete a movie from favorite list of a person
INSERT INTO Likes
(productId, userId)
VALUES (1, 2001);
DELETE FROM Likes
WHERE userId = 2001 AND productId = 1;

--delete one genre of a movie
INSERT INTO Genre
(genre_title, productId)
VALUES ('drama', 1);
DELETE FROM Genre
WHERE genre_title = 'drama' AND productId = 1;

