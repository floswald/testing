using Test
using testing

@testset "read?" begin
    e1 = testing.dosave()
    e2 = testing.doread()
    @test e1 == e2
end