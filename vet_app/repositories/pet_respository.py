
from db.run_sql import run_sql
from models.pet import Pet
from models.vet import Vet
from models.owner import Owner


def select_all():
    pets = []
    sql = "SELECT * FROM pets"
    results = run_sql(sql)

    for row in results:
        pet = 
        pets.append(pet)
    return pets