-- person table
DELETE FROM Person;
-- shawshank redemption 
INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (1,'Frank', 'Darabont', 'frankdarabont', '5C0B1AE7EF3B0E1552CD215596A4449A8BCD5D060F18511DA8E63B87F67C11F6', 'frankdarabont@gmail.com', 62, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (2,'Morgan', 'Freeman', 'morganfreeman', 'C6F5C46F9E3DAEA6422F8A004682A5DE6F6946A9CFB7C9CA71912C029A981403', 'morganfreeman@gmail.com', 84, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (3,'Tim', 'Robbins', 'timrobbins', '522E6198A268C62C01C9944CC2C06902D8308D65E6444EB8AD10BBE98DC362B6', 'timrobins@gmail.com', 63, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (4,'Stephen', 'King', 'stephenking', '8EEC27653C19ED078B2F3BAE16FF901D16347D7917D2B8E2317914E2437BF324', 'stephenking@gmail.com', 74, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (5,'Liz', 'Glotzer', 'lizglotzer', 'F7AC69722A0706C533AFA393B1574A761A073DF0A8280094D3500A4BBC9C2877', 'lizglotzer@gmail.com', 60, 'F' );


INSERT INTO Director
(personId, biography)
VALUES (1, 'Three-time Oscar nominee Frank Darabont was born in a refugee camp in 1959 in Montbeliard, France, the son of Hungarian parents who had fled Budapest during the failed 1956 Hungarian revolution. Brought to America as an infant, he settled with his family in Los Angeles and attended Hollywood High School. His first job in movies was as a production assistant on the 1981 low-budget film, Hell Night (1981), starring Linda Blair. He spent the next six years working in the art department as a set dresser and in set construction while struggling to establish himself as a writer.');

INSERT INTO Actor
(personId, biography)
VALUES (2, 'With an authoritative voice and calm demeanor, this ever popular American actor has grown into one of the most respected figures in modern US cinema. Morgan was born on June 1, 1937 in Memphis, Tennessee, to Mayme Edna (Revere), a teacher, and Morgan Porterfield Freeman, a barber. The young Freeman attended Los Angeles City College before serving several years in the US Air Force as a mechanic between 1955 and 1959. His first dramatic arts exposure was on the stage including appearing in an all-African American production of the exuberant musical Hello, Dolly!.');

INSERT INTO Actor
(personId, biography)
VALUES (3, 'Born in West Covina, California, but raised in New York City, Tim Robbins is the son of former The Highwaymen singer Gil Robbins and actress Mary Robbins (née Bledsoe). Robbins studied drama at UCLA, where he graduated with honors in 1981. That same year, he formed the Actors Gang theater group, an experimental ensemble that expressed radical political observations through the European avant-garde form of theater. He started film work in television movies in 1983, but hit the big time in 1988 with his portrayal of dimwitted fastball pitcher "Nuke" Laloosh in Bull Durham (1988). Tall with baby-faced looks, he has the ability to play naive and obtuse (Cadillac Man (1990) and The Hudsucker Proxy (1994)) or slick and shrewd (The Player (1992) and Bob Roberts (1992)).');

INSERT INTO Agent
(personId, biography)
VALUES (4, 'Stephen Edwin King was born on September 21, 1947, at the Maine General Hospital in Portland. His parents were Nellie Ruth (Pillsbury), who worked as a caregiver at a mental institute, and Donald Edwin King, a merchant seaman. His father was born under the surname "Pollock," but used the last name "King," under which Stephen was born. He has an older brother, David. The Kings were a typical family until one night, when Donald said he was stepping out for cigarettes and was never heard from again. Ruth took over raising the family with help from relatives. They traveled throughout many states over several years, finally moving back to Durham, Maine, in 1958.');

INSERT INTO Producer
(personId)
VALUES (5);

--products
INSERT INTO Product
(id, country, name, language, is_free, IMDB_rating, producerId, directorId, age_constraint, description, year)
 VALUES (1, 'USA', 'Shawshank Redemption', 'English', 'y', 9.3, 5, 1, '1', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 1394);

INSERT INTO Movie
(productId, length)
VALUES (1, 142);

INSERT INTO Play
(actorId, productId)
VALUES (2, 1);

INSERT INTO Play
(actorId, productId)
VALUES (3, 1);

INSERT INTO Work
(agentId, productId, role)
VALUES (4, 1, 'writer');






INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (6,'Johan ', 'Renck', 'JohanRenck', '129bfc18eb33e1fb028f49d26efb48ab7yNlOVj1MRlnvHgzMmQQqt3Y7Bw5wB6l', 'JohanRenck@gmail.com', 56, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (7,'Jared', 'Harris', 'JaredHarris', '3e0c3e334e709f72eb36bb690b7bc3acLW4IAKT9D5WTcPyvhJQa951DUZfwdJwu', 'JaredHarris@gmail.com', 60, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (8,'Jessie', 'Buckley', 'JessieBuckley', '3f70497571548bcb980ae5210b8c676dJ1vLMHRR4MKsy3s8Gs3dKpc381ePSTVM', 'JessieBuckley@gmail.com', 32, 'F' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (9,'Craig ', 'Mazin', 'CraigMazin', '8e31b7c693e93abb8e9b806cd3b748270I5APmtudYgQgEWrTQLlAsNY7UJ7qpJm', 'CraigMazin@gmail.com', 50, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (10,'Jane ', 'Featherstone ', 'JaneFeatherstone', 'd82e9c1852824d43911303700595943eb07TsVax8y4sNKF3GjGXyucrvBFOURUc', 'JaneFeatherstone @gmail.com', 52, 'F' );


INSERT INTO Director
(personId, biography)
VALUES (6, 'Johan Renck is one of the most respected and sought after directors of commercials and music videos today, so much so that the French magazine CB News dubbed him "the number one director of commercials and music videos in the world". His directing career started in 1992 when he joined the production company Mekano Film and Television in Stockholm, Sweden. In 1994 he left Mekano to join forces with childhood friend director Jonas Åkerlund. They established a new production company, Renck Åkerlund Films, which immediately became one of the leaders of its kind in Sweden. During the same time he worked with his music project, Stakka Bo, with big success and a lot of his time was occupied by the music career. In 1997 he started to work as a director full time and quickly became a well-known name worldwide and in 1999 he was working with Madonna and Nike among others.');

INSERT INTO Actor
(personId, biography)
VALUES (7, 'Jared Francis Harris was born in London, England. He is the son of Irish actor Richard Harris and Welsh actress Elizabeth Harris (Elizabeth Rees), and brother of Damian Harris and Jamie Harris. Despite his lineage, Jared showed little interest in becoming an actor, until he was cast in a college production while attending North Carolinas Duke University (USA), where he studied drama and literature, in the early 1980s.');

INSERT INTO Actor
(personId, biography)
VALUES (8, 'Jessie Buckley is an Irish singer and actress, who came in second place in the BBC talent show-themed television series Id Do Anything, and subsequently played Anne Egermann in the West End revival of Stephen Sondheims A Little Night Music. Most recently, Buckley played Lyudmilla Ignatenko in the HBO drama miniseries, Chernobyl. She also appeared on three BBC television series, as Marya Bolkonskaya in BBCs adaptation of Leo Tolstoys War and Peace, as Lorna Bow in Taboo and as Honor Martin in The Last Post.');

INSERT INTO Agent
(personId, biography)
VALUES (9, 'Craig Mazin was born on April 8, 1971 in Brooklyn, New York, USA. He is a writer and producer, known for Chernobyl (2019), The Hangover Part II (2011) and Identity Thief (2013).');

INSERT INTO Producer
(personId)
VALUES (10);

--products
INSERT INTO Product
(id, country, name, language, is_free, IMDB_rating, producerId, directorId, age_constraint, description, year)
 VALUES (2, 'USA', 'Chernobyl', 'English', 'y', 9.4, 10, 6, '1', 'In April 1986, an explosion at the Chernobyl nuclear power plant in the Union of Soviet Socialist Republics becomes one of the worlds worst man-made catastrophes.', 2019);


INSERT INTO Product
(id, country, name, language, is_free, IMDB_rating, producerId, directorId, age_constraint, description, year)
 VALUES (3, 'USA', '1:23:45 ', 'English', 'y', 9.5, 10, 6, '1', 'Plant workers and firefighters put their lives on the line to control a catastrophic April 1986 explosion at a Soviet nuclear power plant.', 2019);

 INSERT INTO Product
(id, country, name, language, is_free, IMDB_rating, producerId, directorId, age_constraint, description, year)
 VALUES (4, 'USA', 'Please Remain Calm', 'English', 'y', 9.6, 10, 6, '1', 'With untold millions at risk, Ulana makes a desperate attempt to reach Valery and warn him about the threat of a second explosion.', 2019);

 INSERT INTO Product
(id, country, name, language, is_free, IMDB_rating, producerId, directorId, age_constraint, description, year)
 VALUES (5, 'USA', 'Open Wide, O Earth ', 'English', 'y', 9.6, 10, 6, '1', 'Valery creates a detailed plan to decontaminate Chernobyl; Lyudmilla ignores warnings about her firefighter husbands contamination.', 2019);

 INSERT INTO Product
(id, country, name, language, is_free, IMDB_rating, producerId, directorId, age_constraint, description, year)
 VALUES (6, 'USA', 'The Happiness of All Mankind ', 'English', 'y', 9.4, 10, 6, '1', 'Valery and Boris attempt to find solutions to removing the radioactive debris; Ulana attempts to find out the cause of the explosion.', 2019);

 INSERT INTO Product
(id, country, name, language, is_free, IMDB_rating, producerId, directorId, age_constraint, description, year)
 VALUES (7, 'USA', 'Vichnaya Pamyat', 'English', 'y', 9.9, 10, 6, '1', 'Valery, Boris and Ulana risk their lives and reputations to expose the truth about Chernobyl.', 2019);



INSERT INTO Serial
(productId, episodes_number)
VALUES (2, 5);

INSERT INTO Movie
(productId, serialId, length)
VALUES (3, 2, 58);

INSERT INTO Movie
(productId, serialId, length)
VALUES (4, 2, 65);

INSERT INTO Movie
(productId, serialId, length)
VALUES (5, 2, 65);

INSERT INTO Movie
(productId, serialId, length)
VALUES (6, 2, 67);

INSERT INTO Movie
(productId, serialId, length)
VALUES (7, 2, 72);

INSERT INTO Play
(actorId, productId)
VALUES (7, 2);

INSERT INTO Play
(actorId, productId)
VALUES (8, 2);

INSERT INTO Work
(agentId, productId, role)
VALUES (9, 2, 'writer');



INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (11 ,'Luc', 'Besson', 'LucBesson', 'dd8d4bdc1f170870b835ddf56954272577yvj6uhoWZlY0HoCTiadhMFkqy4RTHb', 'LucBesson@gmail.com', 62, 'M' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (12,'Scarlett', 'Johansson', 'ScarlettJohansson', 'adb6f3564bd9dd1bfac2a1111c0e6fe1hGOhBWRNlBfOohPq7tUbxs2TZYmzwzQT ', ' ScarlettJohansson @gmail.com', 37, 'F' );

INSERT INTO Person
(id, first_name, last_name, username, password, email, age, gender)
VALUES (13,'Virginie ', 'Besson-Silla', 'VirginieBesson', 'd5ee73f88b35a8aaf4cdd1d5014ccbefBVny2oUngaQTqDRo54HSuQuBwFKtej8u', ' VirginieBesson @gmail.com', 49, 'F' );

INSERT INTO Director
(personId, biography)
VALUES (11, ' Luc Besson spent the first years of his life following his parents, scuba diving instructors, around the world. His early life was entirely aquatic. He already showed amazing creativity as a youth, writing early drafts of The Big Blue (1988) and The Fifth Element (1997), as an adolescent bored in school. He planned on becoming a marine biologist specializing in dolphins until a diving accident at age 17 which rendered him unable to dive any longer. He moved back to Paris, where he was born, and only at age 18 did he first have an urban life or television. He realized that film was a medium which he could combine all his interests in various arts together, so he began taking odd jobs on various films. He moved to America for three years, then returned to France and formed Les Films de Loups - his own production company, which later changed its name to Les Films de Dauphins. He is now able to dive again.');

INSERT INTO Actor
(personId, biography)
VALUES (12, 'Scarlett Ingrid Johansson was born on November 22, 1984 in Manhattan, New York City, New York. Her mother, Melanie Sloan is from a Jewish family from the Bronx and her father, Karsten Johansson is a Danish-born architect from Copenhagen. She has a sister, Vanessa Johansson, who is also an actress, a brother, Adrian, a twin brother, Hunter Johansson, born three minutes after her, and a paternal half-brother, Christian. Her grandfather was writer Ejner Johansson. ');

INSERT INTO Agent
(personId, biography)
VALUES (11, ' Luc Besson spent the first years of his life following his parents, scuba diving instructors, around the world. His early life was entirely aquatic. He already showed amazing creativity as a youth, writing early drafts of The Big Blue (1988) and The Fifth Element (1997), as an adolescent bored in school. He planned on becoming a marine biologist specializing in dolphins until a diving accident at age 17 which rendered him unable to dive any longer. He moved back to Paris, where he was born, and only at age 18 did he first have an urban life or television. He realized that film was a medium which he could combine all his interests in various arts together, so he began taking odd jobs on various films. He moved to America for three years, then returned to France and formed Les Films de Loups - his own production company, which later changed its name to Les Films de Dauphins. He is now able to dive again.');

INSERT INTO Producer
(personId, biography)
VALUES (13, 'Virginie Besson-Silla is known for her work on Lucy (2014), Valerian and the City of a Thousand Planets (2017) and Revolver (2005). She has been married to Luc Besson since August 28, 2004. They have three children.');

--products
INSERT INTO Product
(id, country, name, language, is_free, IMDB_rating, producerId, directorId, age_constraint, description, year)
 VALUES (8, 'USA', 'Lucy', 'English', 'y', 6.4, 13, 11, '1', 'A woman, accidentally caught in a dark deal, turns the tables on her captors and transforms into a merciless warrior evolved beyond human logic.', 2014);

INSERT INTO Movie
(productId, length)
VALUES (8, 89);

INSERT INTO Play
(actorId, productId)
VALUES (12, 8);

INSERT INTO Play
(actorId, productId)
VALUES (2, 8);

INSERT INTO Work
(agentId, productId, role)
VALUES (11, 8, 'writer');