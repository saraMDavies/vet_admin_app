from repositories.owner_repository import select_by_id
from models.pet import Pet
from models.vet import Vet
from models.owner import Owner
from models.appointment import Appointment
from repositories import pet_respository, appointment_repository, vet_repository
import datetime

owner1 = Owner("Sara", "Humphries", "01234", "21, Millar Crescent")
vet1 = Vet("Anna", "Hall")
pet1 = Pet("Squeak", "13/04/2020", "Small animal", owner1, vet1, "good rat")
vet_repository.create(vet1)
pet_respository.create(pet1)

pet = pet_respository.select_by_id(13)
print(pet.name)

appointment = Appointment(datetime.date(2021, 6, 19), "13:00", "check up", vet1, pet1)
appointment_repository.create(appointment)
print(appointment.description)

vet2 = vet_repository.select_by_id(4)
pet2 = pet_respository.select_by_id(45)

appointment2 = Appointment(datetime.date(2021, 6, 23), "15:00", "check up", vet2, pet2)
appointment_repository.create(appointment2)

results = appointment_repository.select_all()
for row in results:
    print(row.__dict__)












