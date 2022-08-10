-- Exercício 5 -> --
do
    local m = require('printf')

    print('Digite um número: '); local varia = io.read('*line')
    m.printf('Analisando o valor %s, seu antecessor é %s e o sucessor é %s',
              varia, varia-1, varia+1)
end
