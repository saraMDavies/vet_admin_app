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
        week = [datetime.date(2021,6,7), datetime.date(2021,6,8), datetime.date(2021,6,9), datetime.date(2021,6,10), datetime.date(2021,6,11), datetime.date(2021,6,12), datetime.date(2021,6,13)]        
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

    def get_current_week_days(self):
        today = datetime.date.today()
        year, week_num, day = today.isocalendar()
        return week_num
        

                
    
            







