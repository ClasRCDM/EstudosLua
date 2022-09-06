do -- Catetos e Hipotenusas --
    local printf = require 'printf'
    -- Comprimentos dos Catetos
    io.write('Comprimentos do cateto oposto: ') local co = io.read('*line')
    io.write('Comprimentos do cateto adjacente: ') local ca = io.read('*line')

    -- A Hipotenusa
    local hipotenusa = (co ^ 2 + ca ^ 2) ^ (1/2)

    -- result
    printf('A hipotenusa vai medir %.2f', hipotenusa)
end
