from flask import Flask, render_template, redirect, Blueprint
from repositories import vet_repository, pet_respository

pets_blueprint = Blueprint("pets", __name__)


@pets_blueprint.route('/pets')
def list_pets():
    pets = pet_respository.select_all()

    return render_template('pets/index.html', pets = pets)

@pets_blueprint.route('/pets/<id>/delete', methods = ['POST'])
def delete_pet(id):
    pet_respository.delete_by_id(id)

    return redirect('/pets')