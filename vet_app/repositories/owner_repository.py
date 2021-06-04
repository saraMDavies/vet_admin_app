
from db.run_sql import run_sql
from models.owner import Owner

def select_by_id(id):
    owner = None
    sql = "SELECT * FROM owners o WHERE o.id = %s"
    values = [id]
    result = run_sql(sql, values)

    if result is not None:
        owner = Owner(result['first_name'], result['last_name'], result['telephone'], result['address'], result['id'])
        
    return owner
