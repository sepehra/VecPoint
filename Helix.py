from numpy import (sin, cos, pi, array)

def helix(t):
    def X(t):
        return sin(2 * t)
    def Y(t):
        return sin(3 * t) + cos(4 * t)
    def Z(t):
        return t
    coordination = str(X(t)) + " " + str(Y(t)) + " " + str((t))
    return coordination

def helixator():
    count = 1
    obj_file = open('output.obj', 'w')
    my_range = 0.05 * array(range(0, 100))
    for t in my_range:
        obj_file.write("v " + str(helix(t)) + "\n")
        obj_file.write("p " + str(count) + "\n")
        count += 1
    
    obj_file.close()

helixator()