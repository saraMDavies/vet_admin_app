import unittest
from models.pet import Pet
from models.owner import Owner
from models.vet import Vet

class PetTest(unittest.TestCase):
    def setUp(self):
        self.owner1 = Owner("Sara", "Humphries", "01234", "21, Millar Crescent")
        self.vet1 = Vet("Anna", "Hall")
        self.pet1 = Pet("Squeak", "13/04/2020", "Small animal", self.owner1, self.vet1, "good rat")

    def test_pet_has_name(self):
        self.assertEqual("Squeak", self.pet1.name)

    def test_pet_has_dob(self):
        self.assertEqual("13/04/2020", self.pet1.dob)

    def test_pet_has_animal_category(self):
        self.assertEqual("Small animal", self.pet1.animal_category)

    def test_pet_has_owner(self):
        self.assertEqual(self.owner1, self.pet1.owner)

    def test_pet_has_vet(self):
        self.assertEqual(self.vet1, self.pet1.vet)

    def test_pet_has_notes(self):
        self.assertEqual("good rat", self.pet1.notes)
        
