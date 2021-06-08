from sys import base_prefix
from models.owner import Owner
from db.run_sql import run_sql
from flask import Flask, render_template, redirect, Blueprint, request
from repositories import owner_repository, vet_repository, pet_respository


owners_blueprint = Blueprint("owners", __name__)

@owners_blueprint.route('/owners')
def owners_index():
    owners = owner_repository.select_all()
    alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

    return render_template('owners/index.html', owners = owners, alphabet = alphabet)


@owners_blueprint.route('/owners/alpha/<letter>')
def list_by_letter(letter):
    owners = owner_repository.get_by_letter(letter)
    alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

    

    return render_template('owners/index.html', owners = owners, alphabet = alphabet)

@owners_blueprint.route('/owners/<id>/edit')
def edit_owner_form(id):
    owner = owner_repository.select_by_id(id)

    return render_template('owners/edit.html', owner = owner)

@owners_blueprint.route('/owners/<id>')
def show_owner(id):
    owner = owner_repository.select_by_id(id)
    pets = owner_repository.get_all_pets(id)

    return render_template('owners/show.html', owner = owner, pets = pets)

@owners_blueprint.route('/owners/new')
def new_owner_form():

    return render_template('owners/new.html')