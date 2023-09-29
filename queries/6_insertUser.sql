INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (2001,'Sara', 'Soori', 'SaraSoori', '3A6D64C24CF80B69CCDA37650406467E8266667B50CFD0B984BEB3651B129ED7', 'sarasoori@gmail.com', 35, 'F' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (2002,'Donya', 'Darabi', 'DonyaDarabi', 'B0902FDF394D931105478A7DB15ABCA487C16CC581945E66AE321C7248826D95', 'donyadarabi@gmail.com', 15, 'F' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (2003,'Kamran', 'Darabi', 'KamranDarabi', 'D709631B344BFB8B5D4C37F763B53C07D3C3CFEBDAEC9EAE9091BD5255F4FB72', 'kamrandarabi@gmail.com', 50, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (2004,'Fati', 'Rezaei', 'FatiRezaei', '958F840A82BC835F20CF222A449F373663E6E65832F28F186BDEAFA05E7A8324', 'fatirezaei@gmail.com', 28, 'F' );

INSERT INTO Users
(personId)
VALUES (2001);

INSERT INTO Users
(personId)
VALUES (2002);

INSERT INTO Users
(personId)
VALUES (2003);

INSERT INTO Users
(personId)
VALUES (2004);