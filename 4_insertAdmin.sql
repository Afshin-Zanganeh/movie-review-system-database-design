INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (1001,'Afshin', 'Zanganeh', 'AfshinZanganeh', 'D94E8F262DC028C41A6D1342A6D748057F983C736FA0F60162C0835D65C3F7A0', 'afshinzanganeh@gmail.com', 20, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (1002,'Ali', 'Rezakhoo', 'AliRezakhoo', '3EF5AC7C665742C11FB74F7C33A39918839F506EA31571E69B7C453A0FB2C3E6', 'alirezakhoo@gmail.com', 21, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (1003,'Mohammad Parsa', 'Dorali', 'MohammadParsaDorali', '9B786973C118F13740EBD7B4BBC11F631F7755FB9834F1F9575829682D65D5D9', 'mohammadparsadoraligmail.com', 21, 'M' );

INSERT INTO Admin
(personId)
VALUES (1001);

INSERT INTO Admin
(personId)
VALUES (1002);

INSERT INTO Admin
(personId)
VALUES (1003);

