from flask import Flask, render_template, redirect, Blueprint, request
from repositories import owner_repository, vet_repository, pet_respository


owners_blueprint = Blueprint("owners", __name__)

@owners_blueprint.route('/owners/<id>')
def show_owner(id):
    owner = owner_repository.select_by_id(id)

    return render_template('owners/show.html', owner = owner)

