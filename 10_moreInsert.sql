--Subscription 
INSERT INTO Subscription
(id, price, discount, duration)
VALUES (1, 50, 0, 30);

INSERT INTO Subscription
(id, price, discount, duration)
VALUES (2, 130, 0, 90);

INSERT INTO Subscription
(id, price, discount, duration)
VALUES (3, 200, 10, 180);

INSERT INTO Subscription
(id, price, discount, duration)
VALUES (4, 300, 20, 360);

--Device
INSERT INTO Device
(id, ip, ISP, personId, type)
VALUES (1, '134.12.3.35', 'mci', 2001, 1);

INSERT INTO Device
(id, ip, ISP, personId, type)
VALUES (2, '211.122.32.35', 'mci', 2002, 2);

INSERT INTO Device
(id, ip, ISP, personId, type)
VALUES (3, '139.102.63.5', 'irancell', 2001, 1);

INSERT INTO Device
(id, ip, ISP, personId, type)
VALUES (4, '34.120.37.205', 'shatel', 2003, 2);

INSERT INTO Device
(id, ip, ISP, personId, type)
VALUES (5, '78.43.5.3', 'asiatech', 2001, 3);

INSERT INTO Device
(id, ip, ISP, personId, type)
VALUES (6, '2.43.55.136', 'irancell', 2004, 2);

--Likes (Favorite) table
INSERT INTO Likes
(userId, productId)
VALUES (2003, 1);

INSERT INTO Likes
(userId, productId)
VALUES (2003, 2);

INSERT INTO Likes
(userId, productId)
VALUES (2001, 8);

--Genre table
INSERT INTO Genre
(genre_title, productId)
VALUES ('reality', 1);

INSERT INTO Genre
(genre_title, productId)
VALUES ('inspiration', 1);

INSERT INTO Genre
(genre_title, productId)
VALUES ('reality', 3);

INSERT INTO Genre
(genre_title, productId)
VALUES ('reality', 4);

--Comment table
INSERT INTO Comment
(id, personId, productId, text)
VALUES (1, 1002, 1, 'That was a great movie!');

INSERT INTO Comment
(id, personId, productId, text, likes_number)
VALUES (2, 1002, 1, 'The best film I hav seen in my life.', 12);

INSERT INTO Comment
(id, personId, productId, text, dislikes_number)
VALUES (3, 2002, 4, 'I did not like the movie.', 7);

--Orders table
INSERT INTO Orders
(id, order_number, personId, price, subscriptionId, date)
VALUES (1, '3465987612340098', 2001, 80, 2, '2020-02-01');

INSERT INTO Orders
(id, order_number, personId, price, subscriptionId, date)
VALUES (1, '0098435622342126', 2002, 30, 1, '2020-06-03');
