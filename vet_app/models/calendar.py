
class Calendar:
    def __init__(self, appointments):
        self.appointments = appointments

    def appointments_by_day(self):
        return [{
            'date': self.appointments[0].date,
            'appointments': [self.appointments[0]]
        }]

