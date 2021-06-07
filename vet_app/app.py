from flask import Flask, render_template
from controllers.vets_contoller import vets_blueprint
from controllers.pets_controller import pets_blueprint
from controllers.owners_controller import owners_blueprint
from controllers.appointments_controller import appointments_blueprint




app = Flask(__name__)
app.register_blueprint(vets_blueprint)
app.register_blueprint(pets_blueprint)
app.register_blueprint(owners_blueprint)
app.register_blueprint(appointments_blueprint)

@app.route("/")
def main():
    return render_template('index.html')

if __name__ == '__main__':
    app.run()