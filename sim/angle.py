import numpy as np

def calculate(a):    
    theta = (np.pi / 180)*a
    return theta
v = int(input("What is the angle in degrees? "))
print("radian of " +str(v) + " is: "+str(calculate(v)))
    
