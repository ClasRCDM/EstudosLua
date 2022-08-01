-- Tabela de Moedas --
do
	function toString(res)
		local result = ''
		for i, moeda in ipairs(res) do
			result = result .. 'Nome: ' .. (moeda.nome or '') .. '\n'
			result = result .. 'Simbolo: ' .. (moeda.simbolo or '') .. '\n'
			result = result .. 'Pais: ' .. (moeda.pais or '') .. '\n'
			result = result .. '\n'
		end
		return result
	end

	function split(texto, sep)
		-- Linha de cabeçalho
		local partes = {}
		local iniParte = 1

		repeat
			local posQuebra, fimQuebra = string.find(texto, sep, iniParte)

			local fimParte
			if posQuebra ~= nil then 
				fimParte = posQuebra - 1
			end
			local parte = string.sub(texto, iniParte, fimParte)

			if posQuebra ~= nil then 
				iniParte = fimQuebra + 1
			end

			table.insert(partes, parte)
		until posQuebra == nil

		return partes
	end

	function trim(str)
		local str = string.gsub(str, '^%s+', '')
		local str = string.gsub(str, '%s+$', '')
		return str
	end

	function mprint(...)
		local args = {...}

		for i = 1, #args do
			args[i] = '!' .. args[i] .. '!'
		end

		print(table.unpack(args))
	end

	-- _____ --

	-------------------
	-- Nome da Moeda,
	-- Simbolo,
	-- Nome do País,
	-- '005;AFEGANE AFEGANIST; AFN;132;AFEGANISTAO;A;'


	local nomeArquivos = 'M20220801.csv'
	local arqMoedas = io.open(nomeArquivos)
	local conteudo = arqMoedas:read('*a')

	local linhas = split(conteudo, '\r?\n')
	table.remove(linhas, 1)

	local resultado = {}

	for i, linha in ipairs(linhas) do
		local tbMoeda = split(linha, ';')

		if tbMoeda[2] ~= nil then
			local moeda =
			{
				nome = trim(tbMoeda[2]),
				simbolo = trim(tbMoeda[3]),
				pais = trim(tbMoeda[5])
			}
			table.insert(resultado, moeda)
		end
	end

	local nomeArqResultado = string.gsub('Tabela_de_Moedas', '%.%w+$', '.txt')
	local arqResultado = io.open(nomeArqResultado, 'w')
	arqResultado:write(toString(resultado))
end
