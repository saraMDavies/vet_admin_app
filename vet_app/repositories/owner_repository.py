

from db.run_sql import run_sql
from models.owner import Owner
from models.pet import Pet
from models.vet import Vet
from repositories import vet_repository

def create(owner):
    sql = "INSERT INTO owners (first_name, last_name, telephone, address) VALUES (%s, %s, %s, %s) RETURNING *"
    values = [owner.first_name, owner.last_name, owner.telephone, owner.address]
    result = run_sql(sql, values)
    id = result[0]['id']
    owner.id = id

    return owner

def select_all():
    owners = []
    sql = 'SELECT * FROM owners'
    results = run_sql(sql)
    sorted_results = sorted(results, key=lambda k: k['last_name'])

    for row in sorted_results:
        owner = Owner(row['first_name'], row['last_name'], row['telephone'], row['address'], row['id'])
        owners.append(owner)
    return owners



def get_by_letter(letter):
    owners = []
    all_owners = select_all()
    for owner in all_owners:
        if owner.last_name[0] == letter:
            owners.append(owner)
    return owners



def select_by_id(id):
    owner = None
    sql = "SELECT * FROM owners WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        owner = Owner(result['first_name'], result['last_name'], result['telephone'], result['address'], result['id'])
    return owner

def get_all_pets(id):
    pets = []
    sql = " SELECT p.* FROM owners o JOIN pets p ON p.owner_id = o.id WHERE o.id = %s"
    values = [id]
    results = run_sql(sql, values)

    for row in results:
        vet = vet_repository.select_by_id(row['vet_id'])
        owner = select_by_id(row['owner_id'])
        pet = Pet(row['name'], row['dob'], row['animal_category'], owner, vet, row['notes'], row['id'])
        pets.append(pet)
    return pets



