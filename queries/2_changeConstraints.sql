--add constraints
--gender constraint
ALTER TABLE Person 
ADD CONSTRAINT genderConstraint CHECK (gender = 'M' OR gender = 'F');

--is_free constraint
ALTER TABLE Product 
ADD CONSTRAINT is_freeConstraint CHECK (is_free = 'y' OR is_free = 'n');

--age constraint
ALTER TABLE Person 
ADD CONSTRAINT ageConstraint CHECK (age >= 0 OR age <= 200);

--IMDB rating constraint
ALTER TABLE Product 
ADD CONSTRAINT IMDB_ratingConstraint CHECK (IMDB_rating >= 0 AND IMDB_rating <= 10);

--age_constraint constraint
ALTER TABLE Product 
ADD CONSTRAINT age_constraintConstraint CHECK (age_constraint >= 1 AND age_constraint <= 4);

--discount constraint
ALTER TABLE Subscription 
ADD CONSTRAINT discountConstraint CHECK (discount >= 0 AND discount <= 100);

--update constraints
--question and answer length constraint
ALTER TABLE FAQ 
ALTER COLUMN question VARCHAR(1000) NOT NULL;

ALTER TABLE FAQ 
ALTER COLUMN answer VARCHAR(2000) NOT NULL;


--delete constraint
ALTER TABLE Device 
ADD CONSTRAINT typeConstraint CHECK (type >= 0 AND type <= 2);
ALTER TABLE Device 
DROP CONSTRAINT typeConstraint;
ALTER TABLE Device 
ADD CONSTRAINT typeConstraint CHECK (type >= 0 AND type <= 5);
