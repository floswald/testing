using Test
using testing
using OrderedCollections

@testset "read?" begin
    e1 = testing.dosave()
    e2 = testing.doread()
    @test e1.x[:a] == e2.x[:a]
    @test e1.x[:b] == e2.x[:b]
end