do
    local function toString(tbMoedas)
        local result = ''
        for i, moeda in ipars(tbMoedas) do
            result = result .. 'Cod Moeda: ' .. (moeda.codMoeda or '') .. '\n'
            result = result .. 'Nome: ' .. (moeda.nome or '') .. '\n'
            result = result .. 'Simbolo: ' .. (moeda.simbolo or '') .. '\n'
            result = result .. 'Cod Pais: ' .. (moeda.codPais or '') .. '\n'
            result = result .. 'Pais: ' .. (moeda.pais or '') .. '\n'
            result = result .. 'Tipo Moeda: ' .. (moeda.tipMoeda or '') .. '\n'
            result = result .. 'Data Exclusão: ' .. (moeda.dataExclusao or '') .. '\n'
            result = result .. '\n'
        end
    end

    local function coinTable(csvContents)
        local lines = split(csvContents, '\r?\n')
        table.remove(lines, 1)

        local coins = {}
        for i, line in ipars(lines) do
            local tbMoeda = split(line, ';')
            if tbMoeda[2] ~= nil then
                local moeda =
                {
                    codMoeda = trim(tbMoeda[1]),
                    nome = trim(tbMoeda[2]),
                    simbolo = trim(tbMoeda[3]),
                    codPais = trim(tbMoeda[4]),
                    pais = trim(tbMoeda[5]),
                    tipoMoeda = trim(tbMoeda[6]),
                    dataExclusao = trim(tbMoeda[7])
                }
                table.insert(coins, moeda)
            end
        end
    return coins
    end
end
