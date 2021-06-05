
from unittest import result
from db.run_sql import run_sql
from models.owner import Owner

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


