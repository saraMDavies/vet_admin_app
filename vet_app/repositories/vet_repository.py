
from db.run_sql import run_sql
from models.vet import Vet


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
    result = run_sql(sql)

    if result is not None:
        vet = Vet(result['first_name'], result['last_name'], result['id'])
        
    return vet



