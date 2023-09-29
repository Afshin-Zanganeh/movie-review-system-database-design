--add description column to subscription table
ALTER TABLE Subscription 
ADD description VARCHAR(1000);

--add profile picture capability
ALTER TABLE Person
ADD profile_picture IMAGE;

--add user rating to product which is #likes / (#likes + #dislikes)
ALTER TABLE Product
ADD user_rating INT;
ALTER TABLE Product
DROP COLUMN user_rating;

