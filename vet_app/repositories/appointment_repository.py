from db.run_sql import run_sql
from models.appointment import Appointment

def create(appointment):
    sql = "INSERT INTO appointments (date, start_time, description, vet_id, pet_id) VALUES (%s, %s, %s, %s, %s) RETURNING *"
    values = [appointment.date, appointment.start_time, appointment.description, appointment.vet.id, appointment.pet.id]
    result = run_sql(sql, values)

    id = result[0]['id']
    appointment.id = id
    return appointment

