local function linha()
    return print('---------------------------')
end

-- Strings --
-- Simples
s1 = "Água"
s2 = 'Abacate'
s3 = "I'm ok"
s4 = 'I\'m ok'

print(s1..' - '..s2..' - '..s3..' - '..s4)
linha()

-- Complexas
s5 = [[
Olá!!, 
MUNDOOO :)
]]
print(s5)
linha()
--

-- Caracteres especiais --
-- Quebra de linha
print(s1..'\n'..s2..'\n'..s3..'\n'..s4)
linha()

-- Concatenação --
t = {s1, s2, s3, s4, s5}
print(table.concat(t, ' - '))
--

-- Modificando strings | Biblioteca string --
ola = string.sub(s5, 1, 6)
print(string.upper(ola))
print(string.lower(ola))
linha()

if string.find(ola, '12') then
    print('Encontrado...')
else
    print('Não Encontrado')
end
linha()

-- Pattern
ola2 = '!Olá, MUNDO.!'
_, _, nome = string.find(ola2, '!(.-)!')
print(nome)
linha()

nome = string.match(ola2, '!(.-)!')
print(nome)
linha()

-- Misc | Transforma numeros em str e visi versa
s_n = 45.7
n = tostring(s_n)  -- Transforma o número em uma string
print(n..' - '..'Quantidade:'..#n)
n_s = tonumber(n)  -- Volta a ser um número
print(n_s)
