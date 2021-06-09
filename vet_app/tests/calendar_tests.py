import unittest
from models.calendar import Calendar
from models.appointment import Appointment
from models.vet import Vet
from models.pet import Pet
from models.owner import Owner
from repositories import appointment_repository
import datetime

class CalendarTest(unittest.TestCase):
    def setUp(self):
        self.owner1 = Owner("Sara", "Humphries", "01234", "21, Millar Crescent")
        self.vet1 = Vet("Anna", "Hall")
        self.pet1 = Pet("Squeak", "13/04/2020", "Small animal", self.owner1, self.vet1, "good rat") 
        self.appointment1 = Appointment(datetime.date(2021,3,14), 4, "check up", self.vet1, self.pet1, True)
        self.appointment2 = Appointment(datetime.date(2021,4,4), 4, "check up", self.vet1, self.pet1, True)
        self.appointment3 = Appointment(datetime.date(2021,4,4), 4, "check down", self.vet1, self.pet1, True)

        appointments = [self.appointment1]
        self.calendar = Calendar(appointments)

    def test_calendar_has_appointment_list(self):
        self.assertEqual(1, len(self.calendar.appointments))

    def test_calender_creates_appointments_by_day__one_app(self):
        self.assertEqual([{
            'date': datetime.date(2021,3,14),
            'appointments' : [self.appointment1]
        }] ,self.calendar.appointments_by_day())

    def test_calender_creates_appointments_by_day__two_app_diffday(self):
        calendar = Calendar([self.appointment1, self.appointment2])
        self.assertEqual([{
            'date': datetime.date(2021,3,14),
            'appointments' : [self.appointment1]
            },
            {
            'date': datetime.date(2021,4,4),
            'appointments': [self.appointment2]

            }
            ], calendar.appointments_by_day())
    


    def test_calender_creates_appointments_by_day__multi_app_sameday(self):
        calendar = Calendar([self.appointment1, self.appointment2, self.appointment3])
        self.assertEqual([{
            'date': datetime.date(2021,3,14),
            'appointments' : [self.appointment1]
            },
            {
            'date': datetime.date(2021,4,4),
            'appointments': [self.appointment2, self.appointment3]

            }
            ], calendar.appointments_by_day())

    def test_calender_creates_appointments_by_day__order(self):
        calendar = Calendar([self.appointment2, self.appointment3, self.appointment1])
        self.assertEqual([{
            'date': datetime.date(2021,3,14),
            'appointments' : [self.appointment1]
            },
            {
            'date': datetime.date(2021,4,4),
            'appointments': [self.appointment2, self.appointment3]

            }
            ], calendar.appointments_by_day())
        
    def test_returns_all_days_in_week(self):
        calendar = Calendar([])
        self.assertEqual([
            {
                'date': datetime.date(2021,6,7),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,8),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,9),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,10),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,11),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,12),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,13),
                'appointments': []
            }
            ], calendar.appointments_this_week())


    def test_returns_one_app_in_week(self):
        appointment = Appointment(datetime.date(2021,6,8), 3, "check up", "Anna", "pet")
        calendar = Calendar([appointment])
        self.assertEqual([
            {
                'date': datetime.date(2021,6,7),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,8),
                'appointments': [appointment]
            },
            {
                'date': datetime.date(2021,6,9),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,10),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,11),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,12),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,13),
                'appointments': []
            }
            ], calendar.appointments_this_week())
    
    def test_returns_two_app_one_day(self):
        appointment1 = Appointment(datetime.date(2021,6,8), 3, "check up", "Anna", "pet")
        appointment2 = Appointment(datetime.date(2021,6,8), 2, "check up", "Anna", "pet")
        calendar = Calendar([appointment1, appointment2])
        self.assertEqual([
            {
                'date': datetime.date(2021,6,7),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,8),
                'appointments': [appointment1, appointment2]
            },
            {
                'date': datetime.date(2021,6,9),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,10),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,11),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,12),
                'appointments': []
            },
            {
                'date': datetime.date(2021,6,13),
                'appointments': []
            }
            ], calendar.appointments_this_week())

    # def test_gets_current_week_number(self):
    #     self.assertEqual(23, self.calendar.get_current_week_dates())

    # def test_gets_monday_date_this_week(self):
    #     self.assertEqual(datetime.date(2021,6,4), self.calendar.get_current_week_dates())

    # def test_gets_tuesday_date_this_week(self):
    #     self.assertEqual(datetime.date(2021,6,5), self.calendar.get_current_week_dates())

    def test_gets_7_days_from_monday(self):
        self.assertEqual([datetime.date(2021,6,7), datetime.date(2021,6,8), datetime.date(2021,6,9), datetime.date(2021,6,10), datetime.date(2021,6,11), datetime.date(2021,6,12), datetime.date(2021,6,13)], self.calendar.get_current_week_dates())

    def test_returns_empty_calendar_with_times(self):
        calendar = Calendar([])
        this_week = calendar.appointments_this_week()
        times = [9]
        self.assertEqual(
            [{
                'date': datetime.date(2021,6,7),
                'schedule': [
                    {
                        'time': 9,
                        'appointments': []
                    }
                ]
            },
            {
                'date': datetime.date(2021,6,8),
                'schedule': [
                    {
                        'time': 9,
                        'appointments': []
                    }
                ]
            },
            {
                'date': datetime.date(2021,6,9),
                'schedule': [
                    {
                        'time': 9,
                        'appointments': []
                    }
                ]
            },
            {
                'date': datetime.date(2021,6,10),
                'schedule': [
                    {
                        'time': 9,
                        'appointments': []
                    }
                ]
            },
            {
                'date': datetime.date(2021,6,11),
                'schedule': [
                    {
                        'time': 9,
                        'appointments': []
                    }
                ]
            },
            {
                'date': datetime.date(2021,6,12),
                'schedule': [
                    {
                        'time': 9,
                        'appointments': []
                    }
                ]
            },
            {
                'date': datetime.date(2021,6,13),
                'schedule': [
                    {
                        'time': 9,
                        'appointments': []
                    }
                ]
            }
            ], calendar.puts_appointments_in_times_for_week(this_week, times))
