class DefaulterError(Exception):

    def __init__(self):
        print("Your Marks and attendance are less than 75...get serious")

class Student:

    def __init__(self, name, attendance, marks):
        self.name = name
        self.attendance = attendance
        self.marks = marks
    
    def find_defaulter(self):
        try:
            if self.attendance<75 and self.marks<75:
                raise DefaulterError()

        except DefaulterError:
            print("DefaulterError")

s1 = Student("Varad", 0, 50)
s1.find_defaulter()