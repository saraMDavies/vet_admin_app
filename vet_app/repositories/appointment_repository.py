from models.day_timetable import DayTimetable
from flask.templating import render_template
from models.vet import Vet
from models.pet import Pet
from models.appointment import Appointment
from db.run_sql import run_sql
from models.appointment import Appointment
from models.owner import Owner

def create(appointment):
    sql = "INSERT INTO appointments (date, start_time, description, vet_id, pet_id, confirmed) VALUES (%s, %s, %s, %s, %s, %s) RETURNING *"
    values = [appointment.date, appointment.start_time, appointment.description, appointment.vet.id, appointment.pet.id, appointment.confirmed]
    result = run_sql(sql, values)

    id = result[0]['id']
    appointment.id = id
    return appointment

def delete(id):
    sql = "DELETE FROM appointments WHERE id = %s"
    values = [id]
    run_sql(sql, values)



def select_all():
    appointments = []
    sql = '''select a.id as appointment_id, a.date as appointment_date
        , a.start_time as appointment_start_time
        , a.description as appointment_description
		, a.vet_id, a.pet_id, a.confirmed as appointment_confirmed
		, v.first_name as vet_first_name, v.last_name as vet_last_name
		, p.name as pet_name, p.dob as pet_dob, p.animal_category as pet_category, p.notes as pet_notes
		, o.first_name as owner_first_name, o.last_name as owner_last_name, o.telephone as owner_telephone, o.address as owner_address, o.id as owner_id
		 
        from appointments a
        join vets v on v.id = a.vet_id
        join pets p on p.id = a.pet_id
        join owners o on o.id = p.owner_id'''
    
    results = run_sql(sql)
    sorted_results = sorted(results, key=lambda k: k['appointment_date'])

    for row in sorted_results:
        if row['appointment_confirmed']:
            owner = Owner(row['owner_first_name'], row['owner_last_name'], row['owner_telephone'], row['owner_address'], row['owner_id'])
            vet = Vet(row['vet_first_name'], row['vet_last_name'], row['vet_id'])
            pet = Pet(row['pet_name'], row['pet_dob'], row['pet_category'], owner, vet, row['pet_notes'], row['pet_id'])
            appointment = Appointment(row['appointment_date'], row['appointment_start_time'], row['appointment_description'], vet, pet, row['appointment_confirmed'], row['appointment_id'])
            appointments.append(appointment)
    return appointments

def select_by_id(id):
    appointment = None
    sql = '''select a.id as appointment_id, a.date as appointment_date
        , a.start_time as appointment_start_time
        , a.description as appointment_description
		, a.vet_id, a.pet_id, a.confirmed as appointment_confirmed
		, v.first_name as vet_first_name, v.last_name as vet_last_name
		, p.name as pet_name, p.dob as pet_dob, p.animal_category as pet_category, p.notes as pet_notes
		, o.first_name as owner_first_name, o.last_name as owner_last_name, o.telephone as owner_telephone, o.address as owner_address, o.id as owner_id
		 
        from appointments a
        join vets v on v.id = a.vet_id
        join pets p on p.id = a.pet_id
        join owners o on o.id = p.owner_id
        where a.id = %s'''
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        owner = Owner(result['owner_first_name'], result['owner_last_name'], result['owner_telephone'], result['owner_address'], result['owner_id'])
        vet = Vet(result['vet_first_name'], result['vet_last_name'], result['vet_id'])
        pet = Pet(result['pet_name'], result['pet_dob'], result['pet_category'], owner, vet, result['pet_notes'], result['pet_id'])
        appointment = Appointment(result['appointment_date'], result['appointment_start_time'], result['appointment_description'], vet, pet, result['appointment_confirmed'], result['appointment_id'])
    return appointment


def update_appointment(appointment):
    sql = "UPDATE appointments a SET (date, start_time, description, vet_id, pet_id, confirmed) = (%s, %s, %s, %s, %s, %s) WHERE a.id = %s"
    values = [appointment.date, appointment.start_time, appointment.description, appointment.vet.id, appointment.pet.id, appointment.confirmed, appointment.id]
    run_sql(sql, values)

def confirm_appointment(appointment):
    sql = "UPDATE appointments a SET confirmed = TRUE WHERE a.id = %s"
    values = [appointment.id]
    run_sql(sql, values)

def get_list_of_appointments_by_dates():
    days = []
    sql = '''select 	a.date, string_agg(a.id::VARCHAR, ',') as appointment_id_list
            from appointments a
            group by a.date
            order by a.date'''
    results = run_sql(sql)

    for row in results:
        day = DayTimetable(row['date'], row['appointment_id_list'])
        days.append(day)
    return days






