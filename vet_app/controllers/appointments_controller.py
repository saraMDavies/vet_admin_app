
from db.run_sql import run_sql
from flask import Flask, render_template, redirect, Blueprint, request
from repositories import owner_repository, vet_repository, pet_respository, appointment_repository
from models.appointment import Appointment


appointments_blueprint = Blueprint("appointments", __name__)

@appointments_blueprint.route('/appointments')
def list_all_appointments():
    appointments = appointment_repository.select_all()

    return render_template('appointments/index.html', appointments = appointments)

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

    return render_template('/appointments/diary.html', appointment = appointment)



