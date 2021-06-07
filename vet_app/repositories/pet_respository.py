
from repositories import owner_repository, vet_repository
from db.run_sql import run_sql
from models.pet import Pet
from models.vet import Vet
from models.owner import Owner


def select_all():
    pets = []
    sql = '''select p.id as pet_id, p.name as pet_name, p.dob as pet_dob
        , p.animal_category as pet_category, p.notes as pet_notes, p.vet_id, p.owner_id
		, v.first_name as vet_first_name, v.last_name as vet_last_name
        , o.first_name as owner_first_name, o.last_name as owner_last_name, o.telephone as owner_telephone, o.address as owner_address
		from pets p
    join vets v on v.id = p.vet_id
    join owners o on o.id = p.owner_id'''
    results = run_sql(sql)
    sorted_results = sorted(results, key=lambda k: k['pet_name'])

    for row in sorted_results:
        vet = Vet(row['vet_first_name'], row['vet_last_name'], row['vet_id'])
        owner = Owner(row['owner_first_name'], row['owner_last_name'], row['owner_telephone'], row['owner_address'], row['owner_id'])
        pet = Pet(row['pet_name'], row['pet_dob'], row['pet_category'], owner, vet, row['pet_notes'], row['pet_id'])
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
    

    id = result[0]['id']
    pet.id = id
    return pet



def update_pet(pet):
    sql = "UPDATE pets SET (name, dob, animal_category, owner_id, vet_id, notes) = (%s, %s, %s, %s, %s, %s) WHERE id = %s"
    values = [pet.name, pet.dob, pet.animal_category, pet.owner.id, pet.vet.id, pet.notes, pet.id]
    run_sql(sql, values)

def get_animals_by_type(type):
    pets = []
    sql = '''select p.id as pet_id, p.name as pet_name, p.dob as pet_dob
        , p.animal_category as pet_category, p.notes as pet_notes, p.vet_id, p.owner_id
		, v.first_name as vet_first_name, v.last_name as vet_last_name
        , o.first_name as owner_first_name, o.last_name as owner_last_name, o.telephone as owner_telephone, o.address as owner_address
		from pets p
    join vets v on v.id = p.vet_id
    join owners o on o.id = p.owner_id
    where p.animal_category = %s'''
    values = [type]
    results = run_sql(sql, values)
    sorted_results = sorted(results, key=lambda k: k['pet_name'])

    for row in sorted_results:
        vet = Vet(row['vet_first_name'], row['vet_last_name'], row['vet_id'])
        owner = Owner(row['owner_first_name'], row['owner_last_name'], row['owner_telephone'], row['owner_address'], row['owner_id'])
        pet = Pet(row['pet_name'], row['pet_dob'], row['pet_category'], owner, vet, row['pet_notes'], row['pet_id'])
        pets.append(pet)
    return pets

