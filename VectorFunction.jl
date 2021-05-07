# Change (x(t), y(t), z(t)) values based on your need
function x(t)
    return sin(t) - cos(t)
end

function y(t)
    return cos(t) - sin(t)
end

function z(t)
    return t
end

function wavefront()
    object = open("object.obj", "w")
    count = 1
    for t in 0:0.1:21 # Determine the range
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
