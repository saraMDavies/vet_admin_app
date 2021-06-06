
from repositories import owner_repository, vet_repository
from db.run_sql import run_sql
from models.pet import Pet
from models.vet import Vet
from models.owner import Owner


def select_all():
    pets = []
    sql = "SELECT * FROM pets"
    results = run_sql(sql)

    for row in results:
        vet = vet_repository.select_by_id(row['vet_id'])
        owner = owner_repository.select_by_id(row['owner_id'])
        pet = Pet(row['name'], row['dob'], row['animal_category'], owner, vet, row['notes'], row['id'])
        pets.append(pet)
    return pets

def select_by_id(id):
    pet = None
    sql = "SELECT * FROM pets WHERE id = %s "
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        vet = vet_repository.select_by_id(result['vet_id'])
        owner = owner_repository.select_by_id(result['owner_id'])
        pet = Pet(result['name'], result['dob'], result['animal_category'], owner, vet, result['notes'], result['id'])
    return pet


def delete_by_id(id):
    sql = "DELETE FROM pets WHERE id=%s"
    values = [id]
    run_sql(sql, values)

def create(pet):
    sql = "INSERT INTO pets (name, dob, animal_category, owner_id, vet_id, notes) VALUES (%s, %s, %s, %s, %s, %s) RETURNING *"
    values = [pet.name, pet.dob, pet.animal_category, pet.owner.id, pet.vet.id, pet.notes]
    result = run_sql(sql, values)
    print(sql)
    print(values)
    print(result)

    id = result[0]['id']
    pet.id = id
    return pet

def get_cats():
    pets = []
    sql = "SELECT * FROM pets WHERE animal_category = 'Cat'"
    results = run_sql(sql)

    for row in results:
        vet = vet_repository.select_by_id(row['vet_id'])
        owner = owner_repository.select_by_id(row['owner_id'])
        pet = Pet(row['name'], row['dob'], row['animal_category'], owner, vet, row['notes'], row['id'])
        pets.append(pet)
    return pets


def get_dogs():
    pets = []
    sql = "SELECT * FROM pets WHERE animal_category = 'Dog'"
    results = run_sql(sql)

    for row in results:
        vet = vet_repository.select_by_id(row['vet_id'])
        owner = owner_repository.select_by_id(row['owner_id'])
        pet = Pet(row['name'], row['dob'], row['animal_category'], owner, vet, row['notes'], row['id'])
        pets.append(pet)
    return pets


def get_small_animals():
    pets = []
    sql = "SELECT * FROM pets WHERE animal_category = 'Small animal'"
    results = run_sql(sql)

    for row in results:
        vet = vet_repository.select_by_id(row['vet_id'])
        owner = owner_repository.select_by_id(row['owner_id'])
        pet = Pet(row['name'], row['dob'], row['animal_category'], owner, vet, row['notes'], row['id'])
        pets.append(pet)
    return pets

def update_pet(pet):
    sql = "UPDATE pets SET (name, dob, animal_category, owner_id, vet_id, notes) = (%s, %s, %s, %s, %s, %s) WHERE id = %s"
    values = [pet.name, pet.dob, pet.animal_category, pet.owner.id, pet.vet.id, pet.notes, pet.id]
    run_sql(sql, values)

