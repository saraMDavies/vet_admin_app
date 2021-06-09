import datetime
from repositories import vet_repository


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

    def appointments_this_week(self):
        week = self.get_current_week_dates()
        diary = []
        for date in week:
            day = {
                'date': date,
                'appointments': []
            }
            diary.append(day)

        for appointment in self.appointments:
            for day in diary:
                if day['date'] == appointment.date:
                    day['appointments'].append(appointment) 
        return diary

    def get_current_week_dates(self):
        today = datetime.date.today()
        monday = today - datetime.timedelta(days=today.weekday())
        tuesday = monday + datetime.timedelta(days=1)
        wednesday = tuesday + datetime.timedelta(days=1)
        thursday = wednesday + datetime.timedelta(days=1)
        friday = thursday + datetime.timedelta(days=1)
        saturday = friday + datetime.timedelta(days=1)
        sunday = saturday + datetime.timedelta(days=1)
        week = [monday, tuesday, wednesday, thursday, friday, saturday, sunday]
        return week
        
        
        

                
    
            







