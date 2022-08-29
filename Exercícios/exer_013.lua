do -- Reajustes salarial --
    require 'printf'
    -- Salário do funcionário
    io.write('Qual o salario do funcionario: R$') local salario = io.read('*line')

    local aumento = salario * 15 / 100
    -- result
    printf([[
Um funcionario que ganhava R$%s, com 15 porcento de aumento,
passa a ganhar R$%s
    ]], salario, salario + aumento)
end
