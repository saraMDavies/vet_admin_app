
class Appointment:
    def __init__(self, date, start_time, description, vet, pet, id=None):
        self.date = date
        self.start_time = start_time
        self.description = description
        self.vet = vet
        self.pet = pet
        self.id = id

