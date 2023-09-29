--1
CREATE VIEW dbo.highRatingMovies
WITH SCHEMABINDING AS
SELECT id, name, IMDB_rating, description
FROM dbo.Product
WHERE IMDB_rating > 8;
--testing materialized view
SELECT * FROM highRatingMovies;

--2
CREATE VIEW dbo.Transitions
WITH SCHEMABINDING AS
SELECT O.date, O.id, O.order_number, O.price, O.subscriptionId, Person.username
FROM dbo.Orders AS O
INNER JOIN dbo.Person ON Person.id = O.personId;
--testing materialized view
SELECT * FROM Transitions;

--3
CREATE VIEW dbo.allComments
WITH SCHEMABINDING AS
SELECT Comment.text, Comment.date, Person.first_name, Person.last_name
FROM dbo.Comment
INNER JOIN dbo.Person ON Person.id = Comment.personId;
--testing materialized view
SELECT * FROM allComments;