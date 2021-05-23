class Employer:
    def __init__(self, name, age) -> None:
        self.name = name
        self.age = age

    def Greeing(self):
        if self.age <= 18:
            return (self.name + 'You are pizduc')
        else:
            return (self.name + 'You are OK')


person1 = Employer('Andrei', 20)
p1 = person1.Greeing()
print(p1)