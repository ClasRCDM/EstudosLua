do -- Sorteando um item na lista --
    local printf = require 'printf'
    
    -- Nome dos alunos
    io.write('Primeiro Aluno: ') local n1 = io.read('*line')
    io.write('Segundo Aluno: ') local n2 = io.read('*line')
    io.write('Terceiro Aluno: ') local n3 = io.read('*line')
    io.write('Quarto Aluno: ') local n4 = io.read('*line')

    -- Sorteio de aluno
    table = {n1, n2, n3, n4}
    escolhido = table[math.random(#table)]

    print('') -- Space

    -- result
    printf('O aluno escolhido foi %s', escolhido)
end
