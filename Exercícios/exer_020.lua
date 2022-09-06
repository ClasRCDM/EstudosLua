do -- Sorteando uma ordem na lista --
    local writef = require 'writef'

    -- Nome dos alunos
    io.write('Primeiro Aluno: ') local n1 = io.read('*line')
    io.write('Segundo Aluno: ') local n2 = io.read('*line')
    io.write('Terceiro Aluno: ') local n3 = io.read('*line')
    io.write('Quarto Aluno: ') local n4 = io.read('*line')

    -- Sorteio de aluno
    tabl = {n1, n2, n3, n4}
    table.sort(tabl)

    print('') -- Space

    -- result
    writef('A ordem de apresentação sera: ')
    for _,n in ipairs(tabl) do writef('%s, ', n) end
end
