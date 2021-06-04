import unittest
from models.vet import Vet

class VetTest(unittest.TestCase):

    def setUp(self):
        self.vet1 = Vet("Anna", "Hall")
