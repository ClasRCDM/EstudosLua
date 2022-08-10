-- Exercício 9 -> Conversor de Moedas --
do
    local m = require "printf"

    print('Quanto dinheiro você tem na carteira? R$') local r = io.read('*line')
    local dolar = r / 5.10
    m.printf('Com %s você pode comprar US$%s', r+.0, dolar)
end
