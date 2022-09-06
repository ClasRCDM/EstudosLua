do -- Quebrando um número
    local printf = require 'printf'
    -- Número flutuantes
    io.write('Digite um valor: ') local num = io.read("*line")

    -- Convertendo para int
    printf('O valor digitado foi %s e a sua porcao interia e %s', num, math.floor(num))
end
