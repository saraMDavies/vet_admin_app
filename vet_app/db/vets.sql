
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
INSERT INTO vets (id, first_name, last_name) VALUES (2, 'Bill', 'Oddie');
INSERT INTO vets (id, first_name, last_name) VALUES (3, 'Carl', 'Driver');
INSERT INTO vets (id, first_name, last_name) VALUES (4, 'Deena', 'Moore');

INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (1, 'Sara', 'Humphries', '01234', '21, Millar Crescent');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (2, 'Alex', 'Davies', '07756443245 ', '28, Millar Crescent');
INSERT INTO owners (id, first_name, last_name, telephone, address) VALUES (3, 'Judy', 'Garland', '0776889542', '45, Maple Drive');

INSERT INTO pets (id, name, animal_category, notes, vet_id, owner_id) VALUES (1, 'Squeak', 'Small animal', 'good rat', 2, 1);
INSERT INTO pets (id, name, animal_category, notes, vet_id, owner_id) VALUES (2, 'Woof', 'Dog', 'good boy dog', 1, 3);
INSERT INTO pets (id, name, animal_category, notes, vet_id, owner_id) VALUES (3, 'Wombat', 'Small animal', 'another good rat, brother of Squeak', 2, 2);

