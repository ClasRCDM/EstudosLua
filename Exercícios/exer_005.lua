-- Exercício 5 -> Algoritmo dobro, Triplo, Raiz quadrada. --
do
    local m = require('printf')

    io.write('Digite um número: '); local n = io.read('*line')
    local d = n * 2
    local t = n * 3
    local r = n ^ (1/2)
    m.printf([[
    O dobro de %s vale %s.
    O trilpo de %s vale %s.
    A raiz quadrada de %s é igual a %s.
    ]], n, d, n, t, n, r)
end
