
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
