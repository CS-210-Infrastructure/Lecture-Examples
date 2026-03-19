import random

def convert(f):
    return (f - 32) * 5/9 


temps = []
for i in range(100000000):
    temps.append(random.random() * 150 - 50)

for i in range(len(temps)):
    temps[i] = convert(temps[i])


print(temps)



    
