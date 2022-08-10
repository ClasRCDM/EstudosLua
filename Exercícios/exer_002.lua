-- Exercício 1 -> Leia um nome de pessoa e mostre uma mesagem de boas-vindas. --
do
    io.write('Digite seu nome: ', "\n")
    local nome = io.read('*line')
    io.write('Seja bem vindo, E prazer em te conhecer, ' .. nome)
end
