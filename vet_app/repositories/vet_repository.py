
from db.run_sql import run_sql
from models.vet import Vet
from repositories import pet_respository, vet_repository, owner_repository
from models.pet import Pet


def select_all():
    vets = []
    sql = "SELECT * FROM vets"
    results = run_sql(sql)

    for row in results:
        vet = Vet(row['first_name'], row['last_name'], row['id'])
        vets.append(vet)
    return vets


def select_by_id(id):
    vet = None
    sql = "SELECT * FROM vets v WHERE v.id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        vet = Vet(result['first_name'], result['last_name'], result['id'])
        
    return vet

def lists_pets(id):
    pets = []
    sql = '''
            SELECT p.*
            FROM vets v
            JOIN pets p ON p.vet_id = v.id
            WHERE v.id = %s
                '''
    values = [id]
    results = run_sql(sql, values)

    for row in results:
        vet = vet_repository.select_by_id(row['vet_id'])
        owner = owner_repository.select_by_id(row['owner_id'])
        pet = Pet(row['name'], row['dob'], row['animal_category'], owner, vet, row['notes'], row['id'])
        pets.append(pet)
    return pets


def create(vet):
    sql = 'INSERT INTO vets (first_name, last_name) VALUES (%s, %s) RETURNING *'
    values = [vet.first_name, vet.last_name]
    result = run_sql(sql. values)
    id = result['id']
    vet.id = id
    return vet


