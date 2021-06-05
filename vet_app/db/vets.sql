
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
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    dob VARCHAR(255),
    animal_category VARCHAR(255),
    notes VARCHAR(255),
    vet_id INT REFERENCES vets(id),
    owner_id INT REFERENCES owners(id)
);


-- seed data

INSERT INTO vets (id, first_name, last_name) VALUES (1, 'Anna', 'Hall');
INSERT INTO vets (id, first_name, last_name) VALUES (2, 'Bill', 'Osman');
INSERT INTO vets (id, first_name, last_name) VALUES (3, 'Carl', 'Driver');
INSERT INTO vets (id, first_name, last_name) VALUES (4, 'Deena', 'Moore');
INSERT INTO vets (id, first_name, last_name) VALUES (5, 'Kirsty', 'White');




INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (1, 'Debra', 'Newton', '(305) 920-9828', 'Flat 5, 5 Carlton Gardens, London,SW1Y 5AD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (2, 'Anne', 'Pierce', '(842) 376-8141', '230B High Street, Uxbridge,UB8 1LD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (3, 'Rudy', 'Erickson', '(799) 473-6184', '111 Folkestone Road, Copnor,PO3 6LP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (4, 'Ernestine', 'Holmes', '(446) 593-2519', '42 Whinfell Drive, Middleton,M24 4NG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (5, 'Jackie', 'Webster', '(553) 229-6640', '169 Church Way, Doncaster,DN1 2SD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (6, 'Martin', 'Mccormick', '(343) 743-5337', '4 High Hazel Road, Moorends,DN8 4QB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (7, 'Kenny', 'Roberts', '(540) 359-5685', '17 Cavendish Road, Idle,BD10 9LE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (8, 'Tim', 'Ryan', '(930) 702-0978', 'Flat, 7 Quarry Hill Parade, Tonbridge,TN9 2HR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (9, 'Lonnie', 'Santiago', '(803) 282-3892', '104 Inglehurst Gardens, Ilford,IG4 5HA');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (10, 'Jeremiah', 'Allen', '(293) 238-0014', '2 Maes Llan, Kenfig Hill,CF33 6DX');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (11, 'Darla', 'West', '(485) 464-4679', '3 Sudbury Road, Stockton-On-Tees,TS20 2SJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (12, 'Brent', 'Chavez', '(591) 318-6633', '55 Hudson Close, Worthing,BN13 2SJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (13, 'Leland', 'Parker', '(933) 988-2068', 'The Retreat, Hartley Bridge, Horsley,GL6 0QB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (14, 'Carmen', 'Burke', '(475) 778-8998', 'Flat 5, Matson Lodge, 38 Matson Avenue, Matson,GL4 6LD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (15, 'Bethany', 'Wise', '(718) 757-4773', '4 Cabot Way, New Milton,BH25 5NP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (16, 'Roberta', 'French', '(232) 586-8994', '42 Waterside Road, Southall,UB2 4RD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (17, 'Arthur', 'Phelps', '(978) 809-0309', '11 Luffman Road, London,SE12 9SZ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (18, 'Jacquelyn', 'Hunt', '(785) 809-1533', '3 Popes Mead, Haslemere,GU27 2AR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (19, 'Reginald', 'Cox', '(805) 864-5417', '3 Beckenham Court, Burnley,BB10 2RJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (20, 'Sheldon', 'Vargas', '(776) 724-5867', '73 Grafton Road, West Bromwich,B71 4EG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (21, 'Marion', 'Richardson', '(736) 959-4165', '22 Foljambe Road, Rotherham,S65 2UA');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (22, 'Oscar', 'Love', '(298) 928-9944', '3 South Close, Scalford,LE14 4DX');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (23, 'Jason', 'Simpson', '(811) 597-7361', '4 Fountain Place, Whitefield,M45 7FG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (24, 'Johnnie', 'Walsh', '(827) 909-9596', 'Flat 29, Witley Court, Coram Street, London,WC1N 1HD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (25, 'Lloyd', 'Harper', '(718) 518-3320', '5 Queens Gate, East Cowes,PO32 6AG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (26, 'Francisco', 'Lowe', '(763) 325-9424', '26 Richmond Place, Bath,BA1 5PZ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (27, 'Tonya', 'Houston', '(366) 456-5362', 'Bank Cottage, Cynlas Street, Rhosllanerchrugog,LL14 1PU');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (28, 'Melba', 'Moss', '(235) 597-1109', '15 The Strand, Bideford,EX39 2ND');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (29, 'Danny', 'Hampton', '(430) 664-7189', '3 Bell Street, Pensnett,DY5 4HL');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (30, 'Pauline', 'Sparks', '(412) 360-5069', '10 Sherway Close, Headcorn,TN27 9SQ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (31, 'Maria', 'Mckenzie', '(464) 556-3864', '2 Royal Court, Colchester,CO4 3GB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (32, 'Joey', 'Stanley', '(384) 399-3637', '3 Bridge End, Broad Oak,CA18 1RR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (33, 'Rex', 'Torres', '(765) 800-9149', '12 Woodside View, Benfleet,SS7 4PB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (34, 'Pedro', 'Howard', '(397) 391-4352', '4 Bluebird Place, East Cowes,PO32 6FN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (35, 'Lance', 'Morrison', '(235) 527-1899', '51 Bamburg Close, Corby,NN18 9PB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (36, 'Jane', 'George', '(954) 964-0116', 'Unit 9 Corrie Way, Bredbury Park Industrial Estate,SK6 2ST');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (37, 'Gilbert', 'Reeves', '(277) 580-8604', 'Elm House Bungalow, Bullamoor Road, Northallerton,DL6 3QN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (38, 'Loretta', 'Campbell', '(352) 302-3292', '27 Kinsbourne Close, Harpenden,AL5 3PB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (39, 'Elsa', 'Henry', '(616) 988-7878', '6 Petersham Close, Byfleet,KT14 7HT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (40, 'Glenn', 'Hogan', '(346) 711-1835', '16A Rocky Lane South, Wirral,CH60 0DE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (41, 'Velma', 'Curry', '(588) 563-7614', '2 Windmill Cottages, Main Road, Lacey Green,HP27 0QH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (42, 'Taylor', 'Tucker', '(419) 712-9606', '6 Snowdon Drive, Wrexham,LL11 2UY');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (43, 'Calvin', 'Green', '(219) 455-4968', 'Lillipit Cottage, Milton Combe,PL20 6HN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (44, 'Margaret', 'Collier', '(424) 304-3984', '35 Haregate Road, Leek,ST13 6PP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (45, 'Marcus', 'Kim', '(722) 967-2820', 'Flat 4, Airedale Court, Heene Road, Worthing,BN11 4LH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (46, 'Whitney', 'Beck', '(529) 712-4940', 'Bryn-Awel, Orchard Lane, Hanwood,SY5 8LE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (47, 'Ginger', 'Butler', '(811) 977-8320', '3 Netherley Cottages, Liverpool,L27 6PA');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (48, 'Lila', 'Davis', '(767) 593-3327', 'Craglands, Clawthorpe,LA6 1NX');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (49, 'Alonzo', 'Lynch', '(285) 920-2358', 'Flat 44, Highland Court, Scotland Road, Nottingham,NG5 1GR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (50, 'Krystal', 'Morris', '(263) 441-0260', 'Black Tiles, High Street, Thorpe-Le-Soken,CO16 0EG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (51, 'Christopher', 'Harrington', '(643) 894-6756', 'Tyllwyd, Eglwyswrw,SA41 3TD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (52, 'Hope', 'Joseph', '(443) 746-3057', 'Millfield Cottage, Faceby,TS9 7DA');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (53, 'Lucia', 'Peters', '(600) 624-5941', '93 Southbourne Grove, Southbourne,BH6 3QX');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (54, 'Christy', 'Rodriquez', '(255) 494-6611', 'Puddinglake Barn, Byley Lane, Byley,CW10 9LN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (55, 'Catherine', 'Gutierrez', '(810) 201-8339', '46 Doria Drive, Gravesend,DA12 4HS');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (56, 'Jean', 'Moore', '(841) 637-6117', '3 The Glebe, Magdalen Laver,CM5 0EQ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (57, 'Luke', 'Estrada', '(782) 725-4212', 'Rectory Cottage, Church Street, Clifton Campville,B79 0AR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (58, 'Jeff', 'Mendez', '(426) 392-5158', '25 Brooklands Drive, Goostrey,CW4 8JD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (59, 'Rufus', 'Barker', '(838) 214-7851', '14 Milburn, Wilnecote,B77 4JD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (60, 'Kathryn', 'Hubbard', '(304) 259-0221', '3 Matfield Close, Chelmsford,CM1 7TP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (61, 'Jacob', 'Graves', '(722) 651-6825', 'Anglers Cottage, Bolton,CA16 6AZ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (62, 'Harry', 'Doyle', '(988) 316-1137', 'Rydal House, Rydal Street, Frizington,CA26 3PP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (63, 'Patricia', 'Montgomery', '(842) 711-3735', '2 Penyffordd Terrace, Penrhynside,LL30 3DB');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (64, 'Jana', 'Powell', '(649) 376-4703', '45 Well Lane, Weaverham,CW8 3PH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (65, 'Zachary', 'Briggs', '(711) 501-1366', '6 Ferndale Road, Chichester,PO19 6QJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (66, 'Jerome', 'Jensen', '(632) 650-8858', '116 Rockingham Road, Corby,NN17 1AG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (67, 'Emanuel', 'Neal', '(876) 837-5432', '4 Jackman Close, Newton-Le-Willows,WA12 8AH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (68, 'Herbert', 'Horton', '(858) 514-0638', '1 Coltsfoot Corner, Ampthill,MK45 2BF');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (69, 'Albert', 'Marsh', '(272) 614-0402', 'Holly Cottage, Branscombe,EX12 3BT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (70, 'Penny', 'Elliott', '(782) 673-7133', '91 Sarsfeld Road, London,SW12 8HT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (71, 'Ryan', 'Ford', '(837) 743-7564', '10 Green Dragon Road, Winterbourne,BS36 1HF');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (72, 'Johnathan', 'Clark', '(950) 999-2972', 'First And Second Floors, 36 Earls Court Road, London,W8 6EJ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (73, 'Enrique', 'Mendoza', '(204) 298-2875', 'The Wick, Boxted,IP29 4JZ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (74, 'Colleen', 'Carpenter', '(284) 791-7733', 'Flat 10, 47 Cumbrian Way, Southampton,SO16 4AT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (75, 'Janis', 'Sullivan', '(999) 291-9024', '72 Island Wall, Whitstable,CT5 1EL');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (76, 'Andrea', 'Snyder', '(750) 286-1374', 'The Croft, Tamworth Road, Cliff,B78 2DL');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (77, 'Angelica', 'Burgess', '(679) 747-6407', '9 Tillman Close, Greenleys,MK12 6AQ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (78, 'Sheila', 'Parsons', '(662) 776-7076', '43 Ducklington Lane, Witney,OX28 5JD');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (79, 'Homer', 'Flowers', '(374) 225-8529', 'Carnleigh, Bryher,TR23 0PR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (80, 'Oliver', 'Myers', '(344) 765-3132', '1 Davis Street, Rotherham,S65 2DP');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (81, 'Cesar', 'Mann', '(984) 203-2746', '38 Middleton Boulevard, Nottingham,NG8 1BG');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (82, 'Antonia', 'Morgan', '(832) 798-8649', '6 Tan House Close, Parbold,WN8 7HH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (83, 'Dewey', 'Lee', '(485) 925-7897', '12 Elmstead Road, Chelford,SK11 9BS');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (84, 'Viola', 'Brooks', '(337) 300-5268', 'Sunnycroft Farm, South Cave Road, Riplingham,HU15 1QT');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (85, 'Wayne', 'Morales', '(838) 615-1525', '48 Ashford Crescent, Ashford,TW15 3ED');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (86, 'Carole', 'Pratt', '(844) 806-0787', '2Nd Floor Holborn Tower, 137 - 144 High Holborn, London,WC1V 6PL');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (87, 'Elvira', 'Walters', '(786) 511-1274', '9 Avonlea Drive, Manchester,M19 1AH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (88, 'Jody', 'Robbins', '(212) 833-7218', '29 Scotland Close, Fair Oak,SO50 7BQ');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (89, 'Louise', 'Arnold', '(302) 515-1008', '15 Sorbus Street, Bilston,WV14 8QH');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (90, 'Brendan', 'Price', '(608) 288-3940', '25 Chiltern Road, Sandhurst,GU47 8ND');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (91, 'Valerie', 'Quinn', '(632) 761-6545', 'Two Tides, Rhosneigr,LL64 5JR');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (92, 'Felicia', 'Cook', '(757) 653-1497', '116 Silbury Arcade, Milton Keynes,MK9 3BE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (93, 'Leticia', 'Stewart', '(857) 886-2872', '71 Corbin Road, Hilperton,BA14 7EN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (94, 'Alma', 'Jordan', '(933) 598-5268', '3 Daglands Hill, Fowey,PL23 1BW');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (95, 'Mandy', 'Brady', '(521) 619-6102', '13 Westfield Close, Brixham,TQ5 0ED');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (96, 'Cedric', 'Collins', '(273) 953-4548', '5 Snowden Avenue, Knottingley,WF11 8PE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (97, 'Clifton', 'Larson', '(663) 212-3184', '2 Sterling Avenue, Maidstone,ME16 0AY');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (98, 'Maxine', 'Fields', '(513) 303-7624', '20 Parc Moel Lus, Penmaenmawr,LL34 6DN');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (99, 'Faith', 'Burns', '(796) 225-5664', '6 Windsor Lane, Stoke-Sub-Hamdon,TA14 6UE');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (100, 'Kelli', 'Hardy', '(536) 329-5461', '7 Braddons Cliffe, Torquay,TQ1 1HR');

INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (1, 'Jett', 'Feb. 28, 2021', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 39);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (2, 'Hallie', 'Feb. 5, 2021', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 57);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (3, 'Sage', 'Jan. 1, 2021', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 38);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (4, 'Murphy', 'Sep. 27, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 14);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (5, 'Gypsy', 'Dec. 9, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 69);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (6, 'Einstein', 'Aug. 4, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (7, 'Bubba', 'Jun. 26, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 77);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (8, 'Tabetha', 'Nov. 26, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 90);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (9, 'Panda', 'Apr. 5, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 33);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (10, 'Babe', 'Dec. 9, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 46);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (11, 'Snoop', 'Oct. 1, 2020', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 49);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (12, 'Itsy', 'Oct. 5, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 76);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (13, 'Pedro', 'Oct. 2, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 14);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (14, 'Ryder', 'Aug. 7, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 51);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (15, 'Cameo', 'Dec. 29, 2020', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 84);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (16, 'Jackson', 'Sep. 14, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 2);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (17, 'Obie', 'Nov. 6, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 84);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (18, 'Fuzzy', 'May 25, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 70);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (19, 'Mackenzie', 'Feb. 6, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 28);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (20, 'Winston', 'Jan. 8, 2021', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 80);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (21, 'Sumo', 'Apr. 26, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 34);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (22, 'Kerry', 'Mar. 3, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 56);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (23, 'Sheena', 'Aug. 22, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 93);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (24, 'Barker', 'Mar. 22, 2021', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (25, 'Pretty', 'Sep. 18, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 20);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (26, 'Munchkin', 'Jun. 18, 2019', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 35);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (27, 'Reggie', 'Mar. 4, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (28, 'Kali', 'Feb. 25, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (29, 'Gus', 'Jun. 11, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 65);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (30, 'Charles', 'Apr. 20, 2019', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 33);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (31, 'Patty', 'Nov. 14, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 27);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (32, 'Montgomery', 'Mar. 16, 2021', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 43);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (33, 'Buffie', 'May 2, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (34, 'Kissy', 'Apr. 18, 2021', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 24);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (35, 'Kramer', 'Apr. 22, 2021', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 28);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (36, 'Alf', 'May 30, 2021', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 92);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (37, 'Brie', 'Sep. 6, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 1, 26);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (38, 'Abbie', 'Oct. 21, 2019', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 16);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (39, 'Cyrus', 'Aug. 8, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 38);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (40, 'Chiquita', 'Feb. 6, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 68);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (41, 'Tony', 'Oct. 24, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (42, 'Tux', 'May 8, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 30);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (43, 'Rock', 'Apr. 1, 2021', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 40);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (44, 'Bridgett', 'Mar. 8, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 2);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (45, 'Remy', 'Oct. 6, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 75);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (46, 'Tasha', 'Jul. 22, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 79);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (47, 'Polly', 'Sep. 21, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 16);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (48, 'Arrow', 'Sep. 19, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 74);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (49, 'Ace', 'Oct. 16, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 96);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (50, 'Georgie', 'Apr. 5, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 27);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (51, 'Cheyenne', 'Jul. 1, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 75);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (52, 'Lightning', 'Mar. 28, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 97);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (53, 'Sabrina', 'Dec. 20, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 34);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (54, 'Mariah', 'Aug. 13, 2019', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 44);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (55, 'Sweetie-pie', 'Mar. 22, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 17);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (56, 'Frisky', 'Feb. 28, 2020', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 27);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (57, 'Sassy', 'Sep. 14, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 57);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (58, 'Ruger', 'Feb. 5, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 80);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (59, 'Bootie', 'Apr. 8, 2021', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 98);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (60, 'Thelma', 'Dec. 11, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (61, 'Ruchus', 'Apr. 1, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 44);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (62, 'T-Bird', 'Dec. 9, 2020', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 97);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (63, 'Darwin', 'Jan. 26, 2021', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 80);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (64, 'Flake', 'Jan. 30, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 53);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (65, 'Rebel', 'Apr. 22, 2019', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 35);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (66, 'Bosley', 'Aug. 23, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 40);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (67, 'Lexus', 'May 17, 2020', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 42);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (68, 'Nero', 'Nov. 17, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 19);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (69, 'Whitie', 'May 7, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 63);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (70, 'Buddy', 'Nov. 29, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 4);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (71, 'Taco', 'Apr. 30, 2019', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 52);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (72, 'Raison', 'Feb. 22, 2019', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 96);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (73, 'Stella', 'Feb. 27, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 9);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (74, 'Precious', 'May 9, 2019', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 63);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (75, 'Amos', 'Jul. 6, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 6);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (76, 'Grover', 'Nov. 20, 2019', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 17);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (77, 'Hammer', 'Sep. 22, 2019', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 53);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (78, 'Olivia', 'Jul. 12, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (79, 'Vava', 'Jul. 6, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (80, 'Buck', 'Aug. 15, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 1, 90);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (81, 'Booster', 'Apr. 2, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 24);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (82, 'Alex', 'Feb. 10, 2019', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 69);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (83, 'Gibson', 'Aug. 16, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 63);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (84, 'Jewel', 'Dec. 7, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 50);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (85, 'Bogey', 'May 14, 2021', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 88);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (86, 'Gizmo', 'Jan. 16, 2021', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 84);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (87, 'Ricky', 'Mar. 7, 2021', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 68);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (88, 'Sundance', 'Dec. 16, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 74);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (89, 'Finnegan', 'Jan. 29, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 33);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (90, 'Harrison', 'Aug. 30, 2019', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 10);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (91, 'Bruiser', 'Oct. 21, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (92, 'Jesse', 'Jan. 22, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 10);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (93, 'Smarty', 'Apr. 9, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 84);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (94, 'Gretchen', 'May 13, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (95, 'Humphrey', 'Feb. 5, 2019', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 98);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (96, 'Billy', 'Sep. 2, 2020', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 42);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (97, 'Samantha', 'Feb. 13, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (98, 'Callie', 'Feb. 9, 2021', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (99, 'Banjo', 'Mar. 10, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 26);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (100, 'Edgar', 'Nov. 18, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 4, 40);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (101, 'Winter', 'Oct. 29, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 49);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (102, 'Cooper', 'Sep. 11, 2020', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 54);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (103, 'Bodie', 'Aug. 3, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 64);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (104, 'Speed', 'Feb. 18, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 24);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (105, 'Tracker', 'Jul. 13, 2020', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 65);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (106, 'Butterball', 'Apr. 18, 2021', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 31);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (107, 'Jazmie', 'Jun. 18, 2020', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 11);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (108, 'Kismet', 'Jul. 3, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 9);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (109, 'Tuesday', 'Aug. 6, 2020', 'Cat', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 89);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (110, 'Chic', 'Mar. 5, 2021', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 96);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (111, 'Piglet', 'Feb. 21, 2021', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 25);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (112, 'Luke', 'Jun. 2, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 36);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (113, 'Ernie', 'Sep. 5, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 63);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (114, 'Francais', 'Dec. 11, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 59);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (115, 'Chico', 'May 28, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 94);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (116, 'Taylor', 'Nov. 4, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 26);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (117, 'Oliver', 'Aug. 13, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 19);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (118, 'Duchess', 'Feb. 23, 2021', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 75);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (119, 'Skyler', 'Aug. 24, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 22);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (120, 'Bibbles', 'Sep. 19, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 2, 32);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (121, 'Wally', 'Feb. 20, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 78);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (122, 'Tigger', 'Aug. 10, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 1, 8);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (123, 'Rin Tin Tin', 'Mar. 24, 2021', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (124, 'Klaus', 'Oct. 25, 2019', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 2, 8);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (125, 'Star', 'Sep. 11, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 71);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (126, 'Peter', 'Jul. 13, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 2, 55);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (127, 'Moocher', 'May 10, 2021', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 5, 6);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (128, 'Lilly', 'Apr. 3, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 70);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (129, 'Pixie', 'Jul. 15, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 15);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (130, 'Ember', 'Jan. 19, 2020', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 4, 86);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (131, 'Red', 'May 7, 2019', 'Cat', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 95);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (132, 'Pockets', 'Dec. 23, 2019', 'Cat', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 1, 37);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (133, 'Jamie', 'Apr. 27, 2021', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 3, 98);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (134, 'Wizard', 'Dec. 7, 2019', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 5, 95);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (135, 'Chevy', 'Jul. 12, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 3, 96);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (136, 'Jewels', 'Oct. 28, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 56);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (137, 'Barkley', 'Jul. 15, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 65);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (138, 'Dakota', 'Aug. 2, 2020', 'Dog', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 3, 83);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (139, 'Sarah', 'May 4, 2020', 'Small animal', 'Perineal lacerations Signalment Usually occur during unassisted foalings in primiparous mares Types First degree lacerations Mucosal damage Caslick/No surgery required', 4, 37);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (140, 'Babykins', 'Dec. 25, 2019', 'Small animal', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 2, 79);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (141, 'Ruby', 'May 19, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 3, 8);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (142, 'Mulligan', 'Oct. 8, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 14);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (143, 'Lou', 'Sep. 11, 2019', 'Dog', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 62);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (144, 'Aries', 'Dec. 21, 2020', 'Small animal', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 35);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (145, 'Milo', 'Aug. 1, 2019', 'Dog', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 1, 7);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (146, 'Ajax', 'Jul. 2, 2020', 'Dog', 'dynamic assessment assessment is it lame or sound which components of gait affected how long on each foot walk', 4, 57);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (147, 'Indy', 'May 5, 2019', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 5, 32);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (148, 'Brittany', 'Mar. 1, 2019', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 52);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (149, 'Jordan', 'Mar. 15, 2020', 'Small animal', 'indications Unilateral Removal of GCT other tumours haematomas Bilateral Options Laparoscopy Standing easiest Under GA reduce size of ovaries', 5, 88);
INSERT INTO pets (id, name, dob, animal_category, notes, vet_id, owner_id) VALUES (150, 'Coco', 'Apr. 30, 2020', 'Cat', 'dynamic assessment NORMAL land at lateral heel engage onto sole roll off toe prior to lift overtracking elongated hind stride', 1, 93);