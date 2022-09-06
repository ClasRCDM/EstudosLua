do -- Quebrando um número
    local printf = require 'printf'
    -- Número flutuantes
    io.write('Digite um valor: ') local num = io.read("*line")

    -- Result
    printf('O valor digitado foi %s e a sua porcao interia e %.0f', num, num)
end
