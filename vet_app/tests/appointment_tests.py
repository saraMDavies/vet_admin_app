import unittest 
from models.vet import Vet
from models.pet import Pet
from models.appointment import Appointment

class AppointmentTest(unittest.TestCase):

    def setUp(self):
        self.vet1 = Vet("Anna", "Hall")
        self.pet1 = Pet("Squeak", "13/04/2020", "Small animal", self.owner1, self.vet1, "good rat")
        self.appointment1 = Appointment("13:00", "14:00", "check up", self.vet1, self.pet1)
        