-- Exercício 10 -> Pintando Parede --
do
    local m = require "printf"

    print('Largura da parede:') local l = io.read('*line')
    print('Altura da parede:') local a = io.read('*line')

    local area = l * a
    local tinta = area / 2

    local txt =[[
Sua parede tem a dimensão de %s x %s e sua área é de %sm².
Para pintar essa parede, vocé precisará de %sl de tinta.
    ]]
    m.printf(txt, l+.0, a+.0, area+.0, tinta)
end
