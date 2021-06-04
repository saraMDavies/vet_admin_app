DROP TABLE  IF EXISTS vets;
DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS pets;

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



