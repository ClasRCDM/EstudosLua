-- Exercício 8 -> Tabuada --
do
    local m = require "printf"

    print('Digite um número para ver sua tabuada: ') local tab = io.read('*line')
    print('-----------')
    for tabuada=1, 10 do
        result = tabuada * tab
        m.printf('%s x %s = %s',
                  tab, tabuada, result)
    end
    print('-----------')
end
