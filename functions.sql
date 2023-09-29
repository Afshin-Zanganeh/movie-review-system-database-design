--1
CREATE FUNCTION Fun_YearlyProduct(@year INT)
RETURNS TABLE
AS
RETURN
    SELECT 
        *
    FROM
        Product
    WHERE
        Product.year = @year;


Select * from Fun_YearlyProduct(2019)

--2
CREATE FUNCTION Fun_CommentWith(@word VARCHAR(10))
RETURNS TABLE
AS
RETURN
    SELECT 
        *
	FROM FAQ

	WHERE FAQ.question like '%'+@word+'%';

Select * from Fun_CommentWith('can')


--3
Create function Fun_ProductInfo()      
returns table       
as      
return(select * from Product);

Select * from Fun_ProductInfo()