-- Exercício 6 -> Média Aritmética --
do
    local m = require('printf')

    print('Primeira nota do aluno: ') local n1 = io.read('*line')
    print('Segunda nota do aluno: ') local n2 = io.read('*line')
    local me = n1 + n2 / 2
    m.printf('A média entre %s e %s é igual a %s', n1, n2, me)
end
