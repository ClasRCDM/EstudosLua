-- Modulos --
local stringUtils = {} -- nome + Utils

function stringUtils.split(texto, sep)
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


	function stringUtils.trim(str)
		local str = string.gsub(str, '^%s+', '')
		local str = string.gsub(str, '%s+$', '')
		return str
	end

return stringUtils