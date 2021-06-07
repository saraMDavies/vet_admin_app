
DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS pets;
DROP TABLE  IF EXISTS vets;
DROP TABLE IF EXISTS owners;



CREATE TABLE vets(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE owners(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    telephone VARCHAR(255),
    address VARCHAR(255)
);


CREATE TABLE pets(
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    dob VARCHAR(255),
    animal_category VARCHAR(255),
    notes VARCHAR(255),
    vet_id INT REFERENCES vets(id),
    owner_id INT REFERENCES owners(id)
);

CREATE TABLE appointments(
    id SERIAL NOT NULL PRIMARY KEY,
    date DATE,
    start_time INT,
    description VARCHAR(255),
    vet_id INT REFERENCES vets(id),
    pet_id INT REFERENCES pets(id)
);


-- seed data

INSERT INTO vets (id, first_name, last_name) VALUES (DEFAULT, 'Anna', 'Hall');
INSERT INTO vets (id, first_name, last_name) VALUES (DEFAULT, 'Bill', 'Osman');
INSERT INTO vets (id, first_name, last_name) VALUES (DEFAULT, 'Carl', 'Driver');
INSERT INTO vets (id, first_name, last_name) VALUES (DEFAULT, 'Deena', 'Moore');
INSERT INTO vets (id, first_name, last_name) VALUES (DEFAULT, 'Kirsty', 'White');

INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Debra', 'Newton', '(305) 920-9828', 'Flat 5, 5 Carlton Gardens, London,SW1Y 5AD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Anne', 'Pierce', '(842) 376-8141', '230B High Street, Uxbridge,UB8 1LD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Rudy', 'Erickson', '(799) 473-6184', '111 Folkestone Road, Copnor,PO3 6LP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Ernestine', 'Holmes', '(446) 593-2519', '42 Whinfell Drive, Middleton,M24 4NG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jackie', 'Webster', '(553) 229-6640', '169 Church Way, Doncaster,DN1 2SD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Martin', 'Mccormick', '(343) 743-5337', '4 High Hazel Road, Moorends,DN8 4QB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Kenny', 'Roberts', '(540) 359-5685', '17 Cavendish Road, Idle,BD10 9LE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Tim', 'Ryan', '(930) 702-0978', 'Flat, 7 Quarry Hill Parade, Tonbridge,TN9 2HR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Lonnie', 'Santiago', '(803) 282-3892', '104 Inglehurst Gardens, Ilford,IG4 5HA');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jeremiah', 'Allen', '(293) 238-0014', '2 Maes Llan, Kenfig Hill,CF33 6DX');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Darla', 'West', '(485) 464-4679', '3 Sudbury Road, Stockton-On-Tees,TS20 2SJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Brent', 'Chavez', '(591) 318-6633', '55 Hudson Close, Worthing,BN13 2SJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Leland', 'Parker', '(933) 988-2068', 'The Retreat, Hartley Bridge, Horsley,GL6 0QB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Carmen', 'Burke', '(475) 778-8998', 'Flat 5, Matson Lodge, 38 Matson Avenue, Matson,GL4 6LD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Bethany', 'Wise', '(718) 757-4773', '4 Cabot Way, New Milton,BH25 5NP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Roberta', 'French', '(232) 586-8994', '42 Waterside Road, Southall,UB2 4RD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Arthur', 'Phelps', '(978) 809-0309', '11 Luffman Road, London,SE12 9SZ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jacquelyn', 'Hunt', '(785) 809-1533', '3 Popes Mead, Haslemere,GU27 2AR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Reginald', 'Cox', '(805) 864-5417', '3 Beckenham Court, Burnley,BB10 2RJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Sheldon', 'Vargas', '(776) 724-5867', '73 Grafton Road, West Bromwich,B71 4EG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Marion', 'Richardson', '(736) 959-4165', '22 Foljambe Road, Rotherham,S65 2UA');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Oscar', 'Love', '(298) 928-9944', '3 South Close, Scalford,LE14 4DX');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jason', 'Simpson', '(811) 597-7361', '4 Fountain Place, Whitefield,M45 7FG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Johnnie', 'Walsh', '(827) 909-9596', 'Flat 29, Witley Court, Coram Street, London,WC1N 1HD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Lloyd', 'Harper', '(718) 518-3320', '5 Queens Gate, East Cowes,PO32 6AG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Francisco', 'Lowe', '(763) 325-9424', '26 Richmond Place, Bath,BA1 5PZ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Tonya', 'Houston', '(366) 456-5362', 'Bank Cottage, Cynlas Street, Rhosllanerchrugog,LL14 1PU');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Melba', 'Moss', '(235) 597-1109', '15 The Strand, Bideford,EX39 2ND');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Danny', 'Hampton', '(430) 664-7189', '3 Bell Street, Pensnett,DY5 4HL');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Pauline', 'Sparks', '(412) 360-5069', '10 Sherway Close, Headcorn,TN27 9SQ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Maria', 'Mckenzie', '(464) 556-3864', '2 Royal Court, Colchester,CO4 3GB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Joey', 'Stanley', '(384) 399-3637', '3 Bridge End, Broad Oak,CA18 1RR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Rex', 'Torres', '(765) 800-9149', '12 Woodside View, Benfleet,SS7 4PB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Pedro', 'Howard', '(397) 391-4352', '4 Bluebird Place, East Cowes,PO32 6FN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Lance', 'Morrison', '(235) 527-1899', '51 Bamburg Close, Corby,NN18 9PB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jane', 'George', '(954) 964-0116', 'Unit 9 Corrie Way, Bredbury Park Industrial Estate,SK6 2ST');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Gilbert', 'Reeves', '(277) 580-8604', 'Elm House Bungalow, Bullamoor Road, Northallerton,DL6 3QN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Loretta', 'Campbell', '(352) 302-3292', '27 Kinsbourne Close, Harpenden,AL5 3PB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Elsa', 'Henry', '(616) 988-7878', '6 Petersham Close, Byfleet,KT14 7HT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Glenn', 'Hogan', '(346) 711-1835', '16A Rocky Lane South, Wirral,CH60 0DE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Velma', 'Curry', '(588) 563-7614', '2 Windmill Cottages, Main Road, Lacey Green,HP27 0QH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Taylor', 'Tucker', '(419) 712-9606', '6 Snowdon Drive, Wrexham,LL11 2UY');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Calvin', 'Green', '(219) 455-4968', 'Lillipit Cottage, Milton Combe,PL20 6HN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Margaret', 'Collier', '(424) 304-3984', '35 Haregate Road, Leek,ST13 6PP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Marcus', 'Kim', '(722) 967-2820', 'Flat 4, Airedale Court, Heene Road, Worthing,BN11 4LH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Whitney', 'Beck', '(529) 712-4940', 'Bryn-Awel, Orchard Lane, Hanwood,SY5 8LE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Ginger', 'Butler', '(811) 977-8320', '3 Netherley Cottages, Liverpool,L27 6PA');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Lila', 'Davis', '(767) 593-3327', 'Craglands, Clawthorpe,LA6 1NX');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Alonzo', 'Lynch', '(285) 920-2358', 'Flat 44, Highland Court, Scotland Road, Nottingham,NG5 1GR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Krystal', 'Morris', '(263) 441-0260', 'Black Tiles, High Street, Thorpe-Le-Soken,CO16 0EG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Christopher', 'Harrington', '(643) 894-6756', 'Tyllwyd, Eglwyswrw,SA41 3TD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Hope', 'Joseph', '(443) 746-3057', 'Millfield Cottage, Faceby,TS9 7DA');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Lucia', 'Peters', '(600) 624-5941', '93 Southbourne Grove, Southbourne,BH6 3QX');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Christy', 'Rodriquez', '(255) 494-6611', 'Puddinglake Barn, Byley Lane, Byley,CW10 9LN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Catherine', 'Gutierrez', '(810) 201-8339', '46 Doria Drive, Gravesend,DA12 4HS');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jean', 'Moore', '(841) 637-6117', '3 The Glebe, Magdalen Laver,CM5 0EQ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Luke', 'Estrada', '(782) 725-4212', 'Rectory Cottage, Church Street, Clifton Campville,B79 0AR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jeff', 'Mendez', '(426) 392-5158', '25 Brooklands Drive, Goostrey,CW4 8JD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Rufus', 'Barker', '(838) 214-7851', '14 Milburn, Wilnecote,B77 4JD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Kathryn', 'Hubbard', '(304) 259-0221', '3 Matfield Close, Chelmsford,CM1 7TP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jacob', 'Graves', '(722) 651-6825', 'Anglers Cottage, Bolton,CA16 6AZ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Harry', 'Doyle', '(988) 316-1137', 'Rydal House, Rydal Street, Frizington,CA26 3PP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Patricia', 'Montgomery', '(842) 711-3735', '2 Penyffordd Terrace, Penrhynside,LL30 3DB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jana', 'Powell', '(649) 376-4703', '45 Well Lane, Weaverham,CW8 3PH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Zachary', 'Briggs', '(711) 501-1366', '6 Ferndale Road, Chichester,PO19 6QJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jerome', 'Jensen', '(632) 650-8858', '116 Rockingham Road, Corby,NN17 1AG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Emanuel', 'Neal', '(876) 837-5432', '4 Jackman Close, Newton-Le-Willows,WA12 8AH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Herbert', 'Horton', '(858) 514-0638', '1 Coltsfoot Corner, Ampthill,MK45 2BF');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Albert', 'Marsh', '(272) 614-0402', 'Holly Cottage, Branscombe,EX12 3BT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Penny', 'Elliott', '(782) 673-7133', '91 Sarsfeld Road, London,SW12 8HT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Ryan', 'Ford', '(837) 743-7564', '10 Green Dragon Road, Winterbourne,BS36 1HF');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Johnathan', 'Clark', '(950) 999-2972', 'First And Second Floors, 36 Earls Court Road, London,W8 6EJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Enrique', 'Mendoza', '(204) 298-2875', 'The Wick, Boxted,IP29 4JZ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Colleen', 'Carpenter', '(284) 791-7733', 'Flat 10, 47 Cumbrian Way, Southampton,SO16 4AT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Janis', 'Sullivan', '(999) 291-9024', '72 Island Wall, Whitstable,CT5 1EL');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Andrea', 'Snyder', '(750) 286-1374', 'The Croft, Tamworth Road, Cliff,B78 2DL');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Angelica', 'Burgess', '(679) 747-6407', '9 Tillman Close, Greenleys,MK12 6AQ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Sheila', 'Parsons', '(662) 776-7076', '43 Ducklington Lane, Witney,OX28 5JD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Homer', 'Flowers', '(374) 225-8529', 'Carnleigh, Bryher,TR23 0PR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Oliver', 'Myers', '(344) 765-3132', '1 Davis Street, Rotherham,S65 2DP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Cesar', 'Mann', '(984) 203-2746', '38 Middleton Boulevard, Nottingham,NG8 1BG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Antonia', 'Morgan', '(832) 798-8649', '6 Tan House Close, Parbold,WN8 7HH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Dewey', 'Lee', '(485) 925-7897', '12 Elmstead Road, Chelford,SK11 9BS');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Viola', 'Brooks', '(337) 300-5268', 'Sunnycroft Farm, South Cave Road, Riplingham,HU15 1QT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Wayne', 'Morales', '(838) 615-1525', '48 Ashford Crescent, Ashford,TW15 3ED');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Carole', 'Pratt', '(844) 806-0787', '2Nd Floor Holborn Tower, 137 - 144 High Holborn, London,WC1V 6PL');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Elvira', 'Walters', '(786) 511-1274', '9 Avonlea Drive, Manchester,M19 1AH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Jody', 'Robbins', '(212) 833-7218', '29 Scotland Close, Fair Oak,SO50 7BQ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Louise', 'Arnold', '(302) 515-1008', '15 Sorbus Street, Bilston,WV14 8QH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Brendan', 'Price', '(608) 288-3940', '25 Chiltern Road, Sandhurst,GU47 8ND');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Valerie', 'Quinn', '(632) 761-6545', 'Two Tides, Rhosneigr,LL64 5JR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Felicia', 'Cook', '(757) 653-1497', '116 Silbury Arcade, Milton Keynes,MK9 3BE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Leticia', 'Stewart', '(857) 886-2872', '71 Corbin Road, Hilperton,BA14 7EN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Alma', 'Jordan', '(933) 598-5268', '3 Daglands Hill, Fowey,PL23 1BW');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Mandy', 'Brady', '(521) 619-6102', '13 Westfield Close, Brixham,TQ5 0ED');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Cedric', 'Collins', '(273) 953-4548', '5 Snowden Avenue, Knottingley,WF11 8PE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Clifton', 'Larson', '(663) 212-3184', '2 Sterling Avenue, Maidstone,ME16 0AY');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Maxine', 'Fields', '(513) 303-7624', '20 Parc Moel Lus, Penmaenmawr,LL34 6DN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Faith', 'Burns', '(796) 225-5664', '6 Windsor Lane, Stoke-Sub-Hamdon,TA14 6UE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (DEFAULT, 'Kelli', 'Hardy', '(536) 329-5461', '7 Braddons Cliffe, Torquay,TQ1 1HR');


INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Jett', 'Feb. 28, 2021', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 39);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Hallie', 'Feb. 5, 2021', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 57);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Sage', 'Jan. 1, 2021', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 38);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Murphy', 'Sep. 27, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 14);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Gypsy', 'Dec. 9, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 69);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Einstein', 'Aug. 4, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Bubba', 'Jun. 26, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 77);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Tabetha', 'Nov. 26, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 90);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Panda', 'Apr. 5, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 33);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Babe', 'Dec. 9, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 46);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Snoop', 'Oct. 1, 2020', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 49);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Itsy', 'Oct. 5, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 76);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Pedro', 'Oct. 2, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 14);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ryder', 'Aug. 7, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 51);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Cameo', 'Dec. 29, 2020', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 84);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Jackson', 'Sep. 14, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 2);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Obie', 'Nov. 6, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 84);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Fuzzy', 'May 25, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 70);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Mackenzie', 'Feb. 6, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 28);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Winston', 'Jan. 8, 2021', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 80);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Sumo', 'Apr. 26, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 34);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Kerry', 'Mar. 3, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 56);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Sheena', 'Aug. 22, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 93);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Barker', 'Mar. 22, 2021', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Pretty', 'Sep. 18, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 20);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Munchkin', 'Jun. 18, 2019', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 35);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Reggie', 'Mar. 4, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Kali', 'Feb. 25, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Gus', 'Jun. 11, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 65);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Charles', 'Apr. 20, 2019', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 33);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Patty', 'Nov. 14, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 27);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Montgomery', 'Mar. 16, 2021', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 43);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Buffie', 'May 2, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Kissy', 'Apr. 18, 2021', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 24);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Kramer', 'Apr. 22, 2021', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 28);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Alf', 'May 30, 2021', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 92);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Brie', 'Sep. 6, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 1, 26);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Abbie', 'Oct. 21, 2019', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 16);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Cyrus', 'Aug. 8, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 38);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Chiquita', 'Feb. 6, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 68);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Tony', 'Oct. 24, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Tux', 'May 8, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 30);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Rock', 'Apr. 1, 2021', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 40);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Bridgett', 'Mar. 8, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 2);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Remy', 'Oct. 6, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 75);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Tasha', 'Jul. 22, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 79);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Polly', 'Sep. 21, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 16);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Arrow', 'Sep. 19, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 74);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ace', 'Oct. 16, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 96);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Georgie', 'Apr. 5, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 27);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Cheyenne', 'Jul. 1, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 75);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Lightning', 'Mar. 28, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 97);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Sabrina', 'Dec. 20, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 34);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Mariah', 'Aug. 13, 2019', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 44);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Sweetie-pie', 'Mar. 22, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 17);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Frisky', 'Feb. 28, 2020', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 27);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Sassy', 'Sep. 14, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 57);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ruger', 'Feb. 5, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 80);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Bootie', 'Apr. 8, 2021', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 98);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Thelma', 'Dec. 11, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ruchus', 'Apr. 1, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 44);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'T-Bird', 'Dec. 9, 2020', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 97);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Darwin', 'Jan. 26, 2021', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 80);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Flake', 'Jan. 30, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 53);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Rebel', 'Apr. 22, 2019', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 35);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Bosley', 'Aug. 23, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 40);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Lexus', 'May 17, 2020', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 42);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Nero', 'Nov. 17, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 19);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Whitie', 'May 7, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 63);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Buddy', 'Nov. 29, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 4);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Taco', 'Apr. 30, 2019', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 52);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Raison', 'Feb. 22, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 96);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Stella', 'Feb. 27, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 9);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Precious', 'May 9, 2019', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 63);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Amos', 'Jul. 6, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 6);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Grover', 'Nov. 20, 2019', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 17);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Hammer', 'Sep. 22, 2019', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 53);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Olivia', 'Jul. 12, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Vava', 'Jul. 6, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Buck', 'Aug. 15, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 1, 90);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Booster', 'Apr. 2, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 24);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Alex', 'Feb. 10, 2019', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 69);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Gibson', 'Aug. 16, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 63);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Jewel', 'Dec. 7, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 50);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Bogey', 'May 14, 2021', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 88);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Gizmo', 'Jan. 16, 2021', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 84);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ricky', 'Mar. 7, 2021', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 68);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Sundance', 'Dec. 16, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 74);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Finnegan', 'Jan. 29, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 33);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Harrison', 'Aug. 30, 2019', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 10);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Bruiser', 'Oct. 21, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Jesse', 'Jan. 22, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 10);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Smarty', 'Apr. 9, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 84);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Gretchen', 'May 13, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Humphrey', 'Feb. 5, 2019', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 98);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Billy', 'Sep. 2, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 42);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Samantha', 'Feb. 13, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Callie', 'Feb. 9, 2021', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Banjo', 'Mar. 10, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 26);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Edgar', 'Nov. 18, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 40);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Winter', 'Oct. 29, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 49);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Cooper', 'Sep. 11, 2020', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 54);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Bodie', 'Aug. 3, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 64);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Speed', 'Feb. 18, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 24);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Tracker', 'Jul. 13, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 65);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Butterball', 'Apr. 18, 2021', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Jazmie', 'Jun. 18, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 11);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Kismet', 'Jul. 3, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 9);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Tuesday', 'Aug. 6, 2020', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 89);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Chic', 'Mar. 5, 2021', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 96);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Piglet', 'Feb. 21, 2021', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 25);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Luke', 'Jun. 2, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 36);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ernie', 'Sep. 5, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 63);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Francais', 'Dec. 11, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 59);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Chico', 'May 28, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 94);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Taylor', 'Nov. 4, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 26);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Oliver', 'Aug. 13, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 19);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Duchess', 'Feb. 23, 2021', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 75);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Skyler', 'Aug. 24, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 22);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Bibbles', 'Sep. 19, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 32);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Wally', 'Feb. 20, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 78);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Tigger', 'Aug. 10, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 8);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Rin Tin Tin', 'Mar. 24, 2021', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Klaus', 'Oct. 25, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 8);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Star', 'Sep. 11, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 71);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Peter', 'Jul. 13, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Moocher', 'May 10, 2021', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 6);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Lilly', 'Apr. 3, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 70);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Pixie', 'Jul. 15, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 15);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ember', 'Jan. 19, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 86);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Red', 'May 7, 2019', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 95);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Pockets', 'Dec. 23, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 1, 37);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Jamie', 'Apr. 27, 2021', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 98);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Wizard', 'Dec. 7, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 95);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Chevy', 'Jul. 12, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 96);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Jewels', 'Oct. 28, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 56);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Barkley', 'Jul. 15, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 65);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Dakota', 'Aug. 2, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Sarah', 'May 4, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 37);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Babykins', 'Dec. 25, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 79);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ruby', 'May 19, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 8);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Mulligan', 'Oct. 8, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 14);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Lou', 'Sep. 11, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 62);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Aries', 'Dec. 21, 2020', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 35);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Milo', 'Aug. 1, 2019', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 7);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Ajax', 'Jul. 2, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 57);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Indy', 'May 5, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 32);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Brittany', 'Mar. 1, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 52);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Jordan', 'Mar. 15, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 88);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (DEFAULT, 'Coco', 'Apr. 30, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 93);


