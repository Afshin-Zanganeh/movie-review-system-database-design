CREATE TABLE Subscription_Logs (
	changeDate DATETIME,
	id INT,
	duration INT,
	discount INT,
	price INT,
	description INT,
	operation CHAR(3)
);


--1
-- trigger to log when new subscription added
CREATE TRIGGER SubscriptionInsertLog
ON Subscription AFTER INSERT AS
BEGIN
	INSERT INTO Subscription_Logs
	SELECT GETDATE(), i.id, i.duration, i.discount, i.price, i.description, 'INS'
	FROM inserted i;
END;

--testing trigger
INSERT INTO Subscription
(id, duration, discount, price)
VALUES(8, 200, 10, 150);

SELECt * FROM Subscription_Logs;


--2
-- trigger to log when a subscription deleted
CREATE TRIGGER SubscriptionDeleteLog
ON Subscription AFTER DELETE AS
BEGIN
	INSERT INTO Subscription_Logs
	SELECT GETDATE(), d.id, d.duration, d.discount, d.price, d.description, 'DEL'
	FROM deleted d;
END;

--testing trigger
DELETE FROM Subscription
WHERE id = 8;

SELECt * FROM Subscription_Logs;


CREATE TABLE CommentBackup(
	deleteTime DATETIME,
	id INT,
	text VARCHAR(8000),
	date DATETIME,
	likes_number INT,
	dislikes_number INT,
	person_id INT,
	product_id INT
);

--3
--trigger to backup the comments when they deleted
CREATE TRIGGER CommentDeleteBackup
ON Comment AFTER DELETE AS
BEGIN
	INSERT INTO CommentBackup
	SELECT GETDATE(), d.id, d.text, d.date, d.likes_number, d.dislikes_number, d.personId, d.productId
	FROM deleted d;
END;

--testing trigger
INSERT INTO Comment
(id, text, date, likes_number, dislikes_number, personId, productId)
VALUES(100, 'very good film!',GETDATE(), 20, 4, 2, 2);

DELETE FROM Comment
WHERE id = 100;

SELECt * FROM CommentBackup;