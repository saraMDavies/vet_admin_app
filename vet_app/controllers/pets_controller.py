from flask import Flask, render_template, redirect, Blueprint, request
from repositories import owner_repository, vet_repository, pet_respository
from models.pet import Pet

pets_blueprint = Blueprint("pets", __name__)


@pets_blueprint.route('/pets')
def list_pets():
    pets = pet_respository.select_all()

    return render_template('pets/index.html', pets = pets)

@pets_blueprint.route('/pets/cats')
def list_cats():
    pets = pet_respository.get_cats()

    return render_template('pets/index.html', pets = pets)

@pets_blueprint.route('/pets/dogs')
def list_dogs():
    pets = pet_respository.get_dogs()

    return render_template('pets/index.html', pets = pets)

@pets_blueprint.route('/pets/small-animals')
def list_small_animals():
    pets = pet_respository.get_small_animals()

    return render_template('pets/index.html', pets = pets)

@pets_blueprint.route('/pets/<id>')
def show_pet(id):
    pet = pet_respository.select_by_id(id)
    

    return render_template('pets/show.html', pet = pet)


@pets_blueprint.route('/pets/<id>/delete', methods = ['POST'])
def delete_pet(id):
    pet_respository.delete_by_id(id)

    return redirect('/pets')

@pets_blueprint.route('/pets/new')
def new_pet_form():
    vets = vet_repository.select_all()
    owners = owner_repository.select_all()

    return render_template('pets/new.html', owners = owners, vets = vets)

@pets_blueprint.route('/pets/new', methods = ['POST'])
def create_pet():
    name = request.form['name']
    dob = request.form['dob']
    animal_category = request.form['animal_category']
    owner_id = request.form['owner_id']
    vet_id = request.form['vet_id']
    notes = ""
    owner = owner_repository.select_by_id(owner_id)
    vet = vet_repository.select_by_id(vet_id)
    pet = Pet(name, dob, animal_category, owner, vet, notes)
    pet_respository.create(pet)

    return redirect('/pets')

@pets_blueprint.route('/pets/<id>/edit')
def edit_form_pet(id):
    pet = pet_respository.select_by_id(id)
    vets = vet_repository.select_all()
    owners = owner_repository.select_all()

    return render_template('pets/edit.html', pet = pet, vets = vets, owners = owners)

@pets_blueprint.route('/pets/<id>', methods = ['POST'])
def update_pet(id):
    name = request.form['name']
    dob = request.form['dob']
    animal_category = request.form['animal_category']
    owner_id = request.form['owner_id']
    vet_id = request.form['vet_id']
    notes = request.form['notes']
    owner = owner_repository.select_by_id(owner_id)
    vet = vet_repository.select_by_id(vet_id)
    pet = Pet(name, dob, animal_category, owner, vet, notes, id)
    pet_respository.update_pet(pet)

    return redirect('/pets')
