import unittest 
from models.vet import Vet
from models.pet import Pet
from models.owner import Owner
from models.appointment import Appointment
import datetime

class AppointmentTest(unittest.TestCase):

    def setUp(self):
        self.vet1 = Vet("Anna", "Hall")
        self.owner1 = Owner("Sara", "Humphries", "01234", "21, Millar Crescent")
        self.pet1 = Pet("Squeak", "13/04/2020", "Small animal", self.owner1, self.vet1, "good rat")
        self.appointment1 = Appointment(datetime.date(2021, 7, 13), "13:00", "check up", self.vet1, self.pet1)

    def test_appointment_has_date(self):
        self.assertEqual(datetime.date(2021, 7, 13), self.appointment1.date)

    def test_appointment_has_time(self):
        self.assertEqual("13:00", self.appointment1.start_time)
    
    def test_has_description(self):
        self.assertEqual("check up", self.appointment1.description)

    def test_has_vet(self):
        self.assertEqual("Anna", self.appointment1.vet.first_name)

    def test_has_pet(self):
        self.assertEqual("Squeak", self.appointment1.pet.name)
