-- Exercício 7 -> Conversor de Medidas --
do
    local m = require "printf"

    print('Uma dinstância em metros: ') local met = io.read('*line')
    m.printf('A medida de %s corresponde a:', met)

    medida = [[
    %s km
    %s hm
    %s dam
    %s dm
    %s.0 cm
    %s.0 mm
    ]]
    m.printf(medida,
    met / 1000, met / 100,
    met / 10, met * 10,
    met * 100, met * 1000)
end
