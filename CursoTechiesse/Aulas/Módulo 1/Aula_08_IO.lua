-- I/O --
-- do -- Usando o read
	-- local a = io.read("*n") -- Le um número
	-- local b = io.read("*l") -- Le a primeira linha
	-- local c = io.read("*a") -- read the complete stdin
	-- print('!' .. a .. "!")
	-- print('!' .. b .. "!")
	-- print('!' .. c .. "!")
-- end

-- do -- Usando o write + o read
	-- io.write('Digite algo: ')
	-- local a = io.read('*l')
	-- print('Voce escreveu > ' .. a)
-- end

do
	local arq = io.open('teste.txt', 'r')
	local conteudo = arq:read("*a")

	arq:close()
	print('!' .. conteudo .. "!")

	arqSaida = io.open('testeSaida.txt', 'w')
	arqSaida:write('!' .. conteudo .. '!')
	arqSaida:close()
end
