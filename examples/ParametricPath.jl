function x(t)
    return sin(t) - cos(2t)
end

function y(t)
    return cos(t) - sin(2t)
end

function z(t)
    return t/3
end

function wavefront()
    object = open("ParametricPath.obj", "w")
    count = 1
    for t in 0:0.02π:4π
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
