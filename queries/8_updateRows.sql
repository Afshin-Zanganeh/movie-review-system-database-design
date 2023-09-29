--increase the remaining subscription time of a specified person
UPDATE Users
SET remaining_subscription_time = (SELECT remaining_subscription_time FROM Users WHERE personId = 2001) + 30
WHERE personId = 2001;

--apply discount to subscriptions
UPDATE Subscription
SET discount = 40
WHERE discount < 40;

--change email of a person
UPDATE Person
SET email = 'afshinzanganeh2001@gmail.com'
WHERE id = 1001;

--change password of a person
UPDATE Person
SET password = '94419B99B12C11133A4DFECCC3E17885974BEB48F7827C48239AABFBCAD238D8'
WHERE id = 1002;

--update the biography of artist
UPDATE Actor
SET biography = 'Morgan Freeman is an American film and sound actor. Freeman is considered one of the best Hollywood actors. He was nominated for Oscar four times. There are many prestigious awards, including a treasured statuette in his personal collection.'
WHERE personId = 2;
