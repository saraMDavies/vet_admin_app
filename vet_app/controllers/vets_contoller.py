from flask import Flask, render_template, redirect, Blueprint
from repositories import vet_repository

vets_blueprint = Blueprint("vets", __name__)

@vets_blueprint.route('/vets')
def list_vets():
    vets = vet_repository.select_all()

    return render_template('vets/index.html', vets = vets)