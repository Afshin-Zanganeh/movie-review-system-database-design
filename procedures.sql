--1
CREATE PROCEDURE SelectFAQ 
AS SELECT * FROM FAQ;
--testing function
EXEC SelectFAQ;

--2
CREATE PROCEDURE SelectComments @productId INT
AS SELECT Comment.* , Person.first_name, Person.last_name FROM Comment
INNER JOIN Person ON Person.id = Comment.personId
WHERE productId = @productId;
--testing function
EXEC SelectComments 1;

--3
CREATE PROCEDURE Login @username VARCHAR(50), @password CHAR(64)
AS SELECT *  FROM Person 
WHERE username = @username AND password = @password;
--testing function
EXEC Login 'AliRezakhoo', '94419B99B12C11133A4DFECCC3E17885974BEB48F7827C48239AABFBCAD238D8';

--4
CREATE PROCEDURE Favorite @personId INT
AS SELECT Person.first_name, Person.last_name, Product.*
FROM Person
INNER JOIN Likes ON Person.id = Likes.userId
INNER JOIN Product ON Likes.productId = Product.id
WHERE Person.id = @personId;
--testing function
EXEC Favorite 2003;

--5
CREATE PROCEDURE Register @username VARCHAR(50), @password CHAR(64), @fname VARCHAR(50), @lname VARCHAR(50), @gender CHAR(1), @id INT, @email VARCHAR(50)
AS INSERT INTO Person
(id, first_name, last_name, username, password, email, gender)
VALUES (@id, @fname, @lname, @username, @password, @email, @gender);
--testing function
EXEC Register 'AlirezaBabaei', 'e9484f1551ed2eddffc131a662c3966330e7e3793b1a79b89751b94a3241da28',
'Alireza', 'Babaei', 'M', '406',  'AlirezaBabaei@gmail.com';


