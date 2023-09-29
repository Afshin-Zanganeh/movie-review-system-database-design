--Products starting with s, S
SELECT *
FROM Product
WHERE Product.name LIKE ('s%') OR  Product.name LIKE ('S%');

--Products that where made after 2015 and have an IMDB rating greater than 9
SELECT *
FROM Product
WHERE Product.year >= 2016 and IMDB_rating >= 9;

--Products that are  american, are free and have age constraint of 1
SELECT *
FROM Product
WHERE Product.country  like 'USA' and is_free = 'y' and age_constraint = 1;

--Products that have a number in their names
SELECT *
FROM Product
WHERE Product.name LIKE '%[0-9]%';

--Female users that are between 15 and 31
SELECT *
FROM PERSON
WHERE gender LIKE 'F' and age BETWEEN 15 and 31;

--How many Male persons
SELECT COUNT(*)
FROM PERSON
WHERE gender LIKE 'M'; 

--Movies that are longer than 1h
SELECT Product.name
FROM Movie, Product
WHERE  Movie.productId = Product.id and Movie.length >= 60;

--Answers from admin MPD
SELECT FAQ.answer
FROM FAQ, Person
WHERE Person.username = 'MohammadParsaDorali'  AND FAQ.adminId = Person.id;

--Device info of RKO
SELECT Device.type, Device.ISP, Device.ip
FROM Device, Person
WHERE Person.username = 'sarasoori'  AND Device.personId = Person.id;

--Orders higher than 50$ and the date between 2019 and 2020
SELECT *
FROM Orders
WHERE Orders.price >= 50 and Orders.date BETWEEN '2019-01-01' AND '2021-01-01';

--User's comments sorted by number of likes
SELECT Comment.text, Comment.date, Comment.likes_number, Comment.dislikes_number 
FROM Comment join Person on Person.id = Comment.personId
WHERE Person.last_name = 'Rezakhoo'
ORDER BY Comment.likes_number;

--Products from a specified category
SELECT Genre.genre_title, COUNT(*)
FROM Genre join Product on Genre.productId = Product.id
GROUP BY Genre.genre_title;

--Sort products by their IMDB score
SELECT *
FROM Product as pro
ORDER BY pro.IMDB_rating DESC;

--All of an actor's products sorted by date
SELECT Person.username,Product.name
FROM Play, Actor,Product, Person
WHERE play.actorId = Actor.personId AND  Actor.personId = Person.id AND Play.productId = Product.id and Person.username = 'morganfreeman';

--Comments that include 'acoount' for frequent questions
SELECT *
FROM FAQ
WHERE FAQ.question like '%account%';

--An specified user's favorite products
SELECT Product.name
FROM Person, Likes, Product
WHERE Person.id = Likes.userId AND Likes.productId = Product.id AND Person.username = 'KamranDarabi';

--An specified user's online devices
SELECT COUNT(*), Person.id
FROM Person join Device on Device.personId = Person.id
GROUP BY Person.id;

--Average users age
SELECT AVG(Person.age)
FROM Person;

--List of subscriptions sorted by price
SELECT *
FROM Subscription
ORDER BY Subscription.price DESC;

--Average sereis length of a specified series
SELECT AVG(Movie.length)
FROM Movie
WHERE serialId  = 2;