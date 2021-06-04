from flask import Flask, render_template, redirect, Blueprint
from repositories import vet_repository, pet_respository

pets_blueprint = Blueprint("pets", __name__)


@pets_blueprint.route('/pets')
def list_pets():
    pets = pet_respository.select_all()

    return render_template('pets/index.html', pets = pets)