
from db.run_sql import run_sql
from flask import Flask, render_template, redirect, Blueprint, request
from repositories import owner_repository, vet_repository, pet_respository, appointment_repository
from models.appointment import Appointment


appointments_blueprint = Blueprint("appointments", __name__)

@appointments_blueprint.route('/appointments')
def list_all_appointments():
    appointments = appointment_repository.select_all()

    return render_template('appointments/index.html', appointments = appointments)

@appointments_blueprint.route('/appointments/new')
def new_appointment_form():
    vets = vet_repository.select_all()
    pets = pet_respository.select_all()

    return render_template('appointments/new.html', vets = vets, pets = pets)

@appointments_blueprint.route('/appointments/new', methods = ['POST'])
def create_new_appointment():
    date = request.form['date']
    time = request.form['time']
    pet_id = request.form['pet_id']
    vet_id = request.form['vet_id']
    description = request.form['description']
    pet = pet_respository.select_by_id(pet_id)
    vet = vet_repository.select_by_id(vet_id)

    appointment = Appointment(date, time, description, vet, pet)
    appointment_repository.create(appointment)

    return redirect('/appointments')


