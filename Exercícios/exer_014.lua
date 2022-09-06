do -- Conversor de Temperaturas --
    local printf = require 'printf'
    -- Temperatura em gruas °C
    io.write('Informe a temperatura em °C: ') local temp = io.read('*line')

    -- Convertendo para °F
    local convertido = ((9 * temp) / 5) + 32

    -- result
    printf('A temperatura de %s°C corresponde a %s°F!!', temp, convertido)
end
