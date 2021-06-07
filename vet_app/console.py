from models.pet import Pet
from models.vet import Vet
from models.owner import Owner
from repositories import pet_respository

owner1 = Owner("Sara", "Humphries", "01234", "21, Millar Crescent")
vet1 = Vet("Anna", "Hall")
pet1 = Pet("Squeak", "13/04/2020", "Small animal", owner1, vet1, "good rat")

pet = pet_respository.select_by_id(13)

print(pet.name)





