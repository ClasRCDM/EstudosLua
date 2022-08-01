-- nil ! Not in List / Não existe ou igual a nada.
a = nil -- Python == None

print(a)

-- Number/Números: Lua não interpreta números reais apenas flutuantes.
-- Valores aceitos.
x = 1
y = 2.5
r = 3.14
endereco = 0x0000aafA

-- Strings: Textos
nome = 'Rafa '
sobrenome = "Calixto"

print(nome .. sobrenome)

-- Table: Tabelas -> Tipo de dados estruturados | Python == Dicionário.
pessoa = -- Tabela complexa.
{
    nome = 'Lucas ',
    sobrenome = "Gessica"
}
print(pessoa.nome .. pessoa.sobrenome)

numeros = {0, 1, 2, 3, 4, 5, 6} -- Tabela simples.

-- Function: Funções | Python == def
function soma(a, b)
    return a + b
end

print(soma(2, 5))

-- Thread: Corrotinas.

-- Userdata: Tipos costumizados, definidos pelo usuário (em C).
