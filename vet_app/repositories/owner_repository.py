
from unittest import result
from db.run_sql import run_sql
from models.owner import Owner
from models.pet import Pet
from models.vet import Vet
from repositories import vet_repository

def select_by_id(id):
    owner = None
    sql = "SELECT * FROM owners o WHERE o.id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        owner = Owner(result['first_name'], result['last_name'], result['telephone'], result['address'], result['id'])
        
    return owner

def select_all():
    owners = []
    sql = 'SELECT * FROM owners'
    results = run_sql(sql)

    for row in results:
        owner = Owner(row['first_name'], row['last_name'], row['telephone'], row['address'], row['id'])
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
        owner = select_by_id(row['owne_id'])
        pet = Pet(row['name'], row['dob'], row['animal_category'], owner, vet, row['notes'], row['id'])
    return pet



