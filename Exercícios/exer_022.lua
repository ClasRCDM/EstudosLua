do -- Separando um dígito de um número --
    local printf = require 'printf'

    -- Nome completo
    io.write('Digíte seu nome completo: ') local nome = io.read('*line')

    print('') -- Space

    -- result - Analisando
    print('Analisando seu nome...')

    printf('Seu nome em maiúsculas é %s', string.upper(nome))
    printf('Seu nome em minúsculas é %s', string.lower(nome))
    printf('Seu nome tem ao todo %s letras', #nome)
end
