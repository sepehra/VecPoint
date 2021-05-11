# Determine values (A1, A2, A3), (c1, c2, c3) and (ω1, ... , ω6) based on your needs and run the code
function x(t)
    return A1 sin(ω1 t) + B1 cos(ω2 t) + c1
end

function y(t)
    return A2 sin(ω3 t) + B2 cos(ω4 t) + c2
end

function z(t)
    return A3 sin(ω5 t) + B3 cos(ω6 t) + t c3
end

function wavefront()
    object = open("object.obj", "w")
    count = 1
    for t in min:steps:max
        # Determine the range: replace "max", "min" and "step" with float or integer values
        write(object, "v ")
        write(object, string(x(t), " "))
        write(object, string(y(t), " "))
        write(object, string(z(t), "\n"))
        write(object, "p $count\n")
        count += 1
    end
    close(object)
end

wavefront()