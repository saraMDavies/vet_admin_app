import unittest
from models.vet import Vet

class VetTest(unittest.TestCase):

    def setUp(self):
        self.vet1 = Vet("Anna", "Hall")

    def test_vet_has_first_name(self):
        self.assertEqual("Anna", self.vet1.first_name)

    def test_vet_has_last_name(self):
        self.assertEqual("Hall", self.vet1.last_name)