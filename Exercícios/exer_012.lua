do -- Calculando descontos --
    local printf = require 'printf'
    -- Preço do produto
    io.write('Qual o preço do produto? R$') local produto = io.read('*line')

    local desconto = produto * 5 / 100
    -- Resultado
    printf([[
o Produto que custava R$%s, na promoção com desconto de
5 porcento vai custar R$%s reais.
    ]], produto+.0, produto - desconto)
end
