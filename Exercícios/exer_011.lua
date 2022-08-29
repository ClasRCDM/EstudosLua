do -- Pintando Parede --
    require 'printf'
    -- Largura da parede
    io.write('Largura da parede: ') local larpar = io.read('*line')
    -- Altura da parede
    io.write('Altura da parede: ') local altpar = io.read('*line')

    -- Resultado
    printf([[ 
Sua parade tem a dimensão de %sx%s e a sua área é de %sm².
Para pintar a parede, você precisa de %sl de tinta.
    ]], larpar, altpar, larpar*altpar, larpar*altpar/2)
end
