do -- Aluguel de carros --
    require 'printf'
    -- Dias alugados do carro
    io.write('Quantos dias alugados? ') local diasAlug = io.read('*line')

    -- Km rodados pelo carro
    io.write('Quantos Km rodados? ') local kmRodds = io.read('*line')

    -- A pagar
    local ppagar = (diasAlug * 60) + (kmRodds * 0.15)

    -- result
    printf('O total a pagar é de R$%s', ppagar)
end
