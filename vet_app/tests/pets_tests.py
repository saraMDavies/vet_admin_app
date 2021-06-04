import unittest
from models.pet import Pet
from models.owner import Owner
from models.vet import Vet

class PetTest(unittest.TestCase):
    def setUp(self):
        self.owner1 = Owner("Sara", "Humphries", "01234", "21, Millar Crescent")
        self.vet1 = Vet("Anna", "Hall")
        self.pet1 = Pet("Squeak", "13/04/2020", "Small animal", self.owner1, self.vet1, "good rat")
