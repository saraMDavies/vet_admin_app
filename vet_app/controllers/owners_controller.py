from models.owner import Owner
from db.run_sql import run_sql
from flask import Flask, render_template, redirect, Blueprint, request
from repositories import owner_repository, vet_repository, pet_respository


owners_blueprint = Blueprint("owners", __name__)

@owners_blueprint.route('/owners')
def owners_index():
    owners = owner_repository.select_all()

    return render_template('owners/index.html', owners = owners)

@owners_blueprint.route('/owners/<id>')
def show_owner(id):
    owner = owner_repository.select_by_id(id)
    pets = owner_repository.get_all_pets(id)

    return render_template('owners/show.html', owner = owner, pets = pets)

