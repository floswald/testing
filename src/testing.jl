module testing
using OrderedCollections
using FileIO

greet() = print("Hello World!")

struct Eval
	x :: OrderedDict
end

function dosave()
	e = Eval(OrderedDict(:a=>1,:b=>3))
	FileIO.save("file.jld2","e",e)
	return e
end

function doread()
	e = FileIO.load("file.jld2","e")
	return e
end

end # module
