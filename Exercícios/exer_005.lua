-- Exercício -> Algoritmo dobro, Triplo, Raiz quadrada. --
do
    m = require('printf')

    io.write('Digite um número: '); local n = io.read('*line')
    d = n * 2
    t = n * 3
    r = n ^ (1/2)
    m.printf([[
    O dobro de %s vale %s.
    O trilpo de %s vale %s.
    A raiz quadrada de %s é igual a %s.
    ]], n, d, n, t, n, r)
end
