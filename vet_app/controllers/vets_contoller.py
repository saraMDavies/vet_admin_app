from flask import Flask, render_template, redirect, Blueprint
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