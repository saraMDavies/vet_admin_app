from models.vet import Vet
from flask import Flask, render_template, redirect, Blueprint, request
from repositories import vet_repository

vets_blueprint = Blueprint("vets", __name__)

@vets_blueprint.route('/vets')
def list_vets():
    vets = vet_repository.select_all()

    return render_template('vets/index.html', vets = vets)

@vets_blueprint.route('/vets/<id>')
def show_vet(id):
    vet = vet_repository.select_by_id(id)
    pets = vet_repository.lists_pets(id)
    len_pets = len(pets)

    return render_template('vets/show.html', vet = vet, pets = pets, len_pets = len_pets)

@vets_blueprint.route('/vets/new')
def new_form():

    return render_template('vets/new.html')

@vets_blueprint.route('/vets/new', methods = ['POST'])
def create_vet():
    first_name = request.form['first']
    last_name = request.form['last']
    vet = Vet(first_name, last_name)
    vet_repository.create(vet)

    return redirect('/vets')

@vets_blueprint.route('/vets/<id>/delete', methods = ['POST'])
def delete_vet(id):
    vet_repository.delete_by_id(id)

    return redirect('/vets')

@vets_blueprint.route('/vets/<vet_id>/edit')
def edit_vet_form(vet_id):
    vet = vet_repository.select_by_id(vet_id)

    return render_template('vets/edit.html', vet = vet)

@vets_blueprint.route('/vets/<vet_id>/edit', methods = ['POST'])
def update_vet(vet_id):
    vet = vet_repository.select_by_id(vet_id)
    vet.first_name = request.form['first_name']
    vet.last_name = request.form['last_name']
    vet_repository.update(vet)
    pets = vet_repository.lists_pets(vet_id)
    len_pets = len(pets)

    return render_template('vets/show.html', vet = vet, pets = pets, len_pets = len_pets)