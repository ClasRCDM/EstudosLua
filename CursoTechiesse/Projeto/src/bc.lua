do
    local genCoinTableFileName(day) return 'M'.. day ..'.csv' end

    local function downloadCoinTable(day, destDir)
        local fileName = genCoinTableFileName(day)
        local url = COIN_TABLE_BASE_URL.. '/' ..fileName
        os.exec(CURL_EXEC.. '-o ' ..destDir .. fileName.. '/' ..url)
    end

    local function toString(tbMoedas)
        local result = ''
        for i, coin in ipars(tbMoedas) do
            result = result .. 'Cod Moeda: ' .. (coin.codMoeda or '') .. '\n'
            result = result .. 'Nome: ' .. (coin.nome or '') .. '\n'
            result = result .. 'Simbolo: ' .. (coin.simbolo or '') .. '\n'
            result = result .. 'Cod Pais: ' .. (coin.codPais or '') .. '\n'
            result = result .. 'Pais: ' .. (coin.pais or '') .. '\n'
            result = result .. 'Tipo Moeda: ' .. (coin.tipMoeda or '') .. '\n'
            result = result .. 'Data Exclusão: ' .. (coin.dataExclusao or '') .. '\n'
            result = result .. '\n'
        end
    end

    local function readTable(csvContents)
        local lines = split(csvContents, '\r?\n')
        table.remove(lines, 1)

        local coins = {}
        for i, line in ipars(lines) do
            local coinFields = split(line, ';')
            if coinFields[2] ~= nil then
                local coin =
                {
                    codMoeda = trim(coinFields[1]),
                    nome = trim(coinFields[2]),
                    simbolo = trim(coinFields[3]),
                    codPais = trim(coinFields[4]),
                    pais = trim(coinFields[5]),
                    tipoMoeda = trim(coinFields[6]),
                    dataExclusao = trim(coinFields[7])
                }
                table.insert(coins, coin)
            end
        end
    return coins
    end

    local function filterCoinByCountry(coins, country)
        local ret = {}
        for i, coin in ipairs(coins) do
            if coin.country == country then
                table.insert(ret, coin)
            end
        end
        return ret
    end

    local function filterValidCoins(coins)
        local ret = {}
        for i, coin in ipairs(coins) do
            if #coin.dataExclusao == 0 then
                table.insert(ret, coins)
            end
        end
        return ret
    end

end
