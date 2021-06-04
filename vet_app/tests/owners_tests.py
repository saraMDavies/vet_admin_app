import unittest
from models.owner import Owner

class OwnerTest(unittest.TestCase):

    def setUp(self):
        self.owner = Owner("Sara", "Humphries", "01234", "21, Millar Crescent")
        