do -- Seno, Cosseno e tangete --
    local printf = require 'printf'
    -- Ângulos do circulo

    -- Ângulos
    io.write('Digite o angulo que você deseja: ') local angulo = io.read('*line')

    -- Seno, Cosseno e tangete
    local seno = math.sin (math.rad(angulo))
    local cosseno = math.cos (math.rad(angulo))
    local tangente = math.tan (math.rad(angulo))

    print('') -- Space

    -- result
    printf('O angulo de %s tem o SENO de %.2f', angulo, seno)
    printf('O angulo de %s tem o COSSENO de %.2f', angulo, cosseno)
    printf('O angulo de %s tem o TANGENTE de %.2f', angulo, tangente)
end
