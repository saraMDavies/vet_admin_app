
class Appointment:
    def __init__(self, start_time, end_time, description, vet, pet, id=None):
        self.start_time = start_time
        self.end_time = end_time
        self.description = description
        self.vet = vet
        self.pet = pet
        self.id = id

        