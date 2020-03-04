class animal:
    def __init__(self,leg):
        self.leg=leg
        
    def legs(self):
        print("Animal has",self.leg,"legs")

class dogs(animal):
    def __init__(self,leg):
        super().__init__(leg)

class tiger(animal):
    def __init__(self,leg):
        self.leg=leg
    


d=dogs(5)
d.legs()

t=tiger(7)
t.super().legs()