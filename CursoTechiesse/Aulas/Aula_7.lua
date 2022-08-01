local function linha()
    return print('---------------------------')
end

-- Tables: Tabelas --
do
	local a = {10, 20, 30, 40}
	for i = 1, #a do
	   print(a[i]..' - '..i)
	end

	if a[5] == nil then
		print(a[5])
		print('O elemento não existe...')
	end
	linha()
end

-- Acessar elementos na tabela
do
	local a = {}
	a['count'] = 4
	print(a['count'])
	print(a.count)

	local usuario =
	{
		nome = 'João',
		idade = 23
	}
	print(usuario.nome .. ' tem ' .. usuario.idade .. 'anos')
	linha()
end

-- Tabela + Funções
do
	local vector = {}

	vector.create = function(x, y)
		return {x = x, y = y}
	end

	vector.soma = function(v1, v2)
		res = {}
		res.x = v1.x + v2.x
		res.y = v1.y + v2.y
		return res
	end

	vector.print = function(v)
		print(table.concat({'(', v.x, ',', v.y, ')'}))
	end

	local valor1 = vector.create(1, 2)
	local valor2 = vector.create(10, 20)

	vector.print(valor1)
	vector.print(valor2)
	vector.print(vector.soma(valor1, valor2))
	linha()
end

-- Tabelas + Iteretor
do
	local a = {5, 4, 3, 4, 1}
	a['Um'] =  1
	a['Dois'] = 2
	a['Treis'] = 3
	a['Quatro'] = 4
	a['Cinco'] = 5

	for chave, valor in ipairs(a) do
		print(table.concat({chave, ' - ', valor}))
	end
	linha()
	for chave, valor in pairs(a) do
		if type(chave) == "string" then
			print(table.concat({chave, ' - ', valor}))
		end
	end
	linha()

	function soma(a, b)
		return a + b
	end

	print(soma(table.unpack(a)))
end
