
from db.run_sql import run_sql
from flask import Flask, render_template, redirect, Blueprint, request
from repositories import owner_repository, vet_repository, pet_respository, appointment_repository
from models.appointment import Appointment
from models.calendar import Calendar


appointments_blueprint = Blueprint("appointments", __name__)

@appointments_blueprint.route('/appointments')
def list_all_appointments():
    appointments = appointment_repository.select_all()

    return render_template('appointments/index.html', appointments = appointments, vet = None)
    
@appointments_blueprint.route('/appointments/<vet_id>')
def appointments_for_vet(vet_id):
    appointments = vet_repository.get_appointments(vet_id)
    vet = vet_repository.select_by_id(vet_id)

    return render_template('appointments/index.html', appointments = appointments, vet = vet)


@appointments_blueprint.route('/appointments/new/<pet_id>')
def new_appointment_form(pet_id):
    pet = pet_respository.select_by_id(pet_id)
    vets = vet_repository.select_all()

    return render_template('appointments/new.html', pet = pet, vets = vets)

@appointments_blueprint.route('/appointments/new/<pet_id>', methods = ['POST'])
def create_new_appointment(pet_id):
    date = request.form['date']
    vet_id = request.form['vet_id']
    pet = pet_respository.select_by_id(pet_id)
    vet = vet_repository.select_by_id(vet_id)
    appointment = Appointment(date, None, None, vet, pet)
    appointment_repository.create(appointment)
    vet_appointments = vet_repository.get_appointments(vet_id)

    return render_template('/appointments/diary.html', appointment = appointment, vet_appointments = vet_appointments)


@appointments_blueprint.route('/appointments/confirm/<app_id>', methods = ['POST'])
def confirm_appointment(app_id):
    appointment = appointment_repository.select_by_id(app_id)
    time = request.form['time']
    description = request.form['notes']
    appointment.start_time = time
    appointment.description = description
    appointment_repository.update_appointment(appointment)
    appointment_repository.confirm_appointment(appointment)

    return redirect('/appointments')

@appointments_blueprint.route('/appointments/calendar')
def appointments_calendar():
    appointments = appointment_repository.select_all()
    calendar = Calendar(appointments)
    diary = calendar.appointments_by_day()


    return render_template('appointments/calendar.html', diary = diary)

@appointments_blueprint.route('/appointments/calendar/<vet_id>')
def appointments_calendar_for_vet(vet_id):
    appointments = vet_repository.get_appointments(vet_id)
    calendar = Calendar(appointments)
    diary = calendar.appointments_by_day()

    return render_template('appointments/calendar.html', diary = diary)
    



