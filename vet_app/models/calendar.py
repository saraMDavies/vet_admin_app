
class Calendar:
    def __init__(self, appointments):
        self.appointments = appointments

    def appointments_by_day(self):
        ordered_appointments = sorted(self.appointments, key=lambda k: k.start_time)
        diary = []
        for appointment in ordered_appointments:
            placed = False
            for day in diary:
                if appointment.date == day['date']:
                    day['appointments'].append(appointment)
                    placed = True
            if not placed:
                day = {
                'date': appointment.date,
                'appointments': [appointment]
                }
                diary.append(day)

        ordered_diary = sorted(diary, key=lambda k: k['date'])
        return ordered_diary

                
    
            






        return [{
            'date': self.appointments[0].date,
            'appointments': [self.appointments[0]]
        }]

