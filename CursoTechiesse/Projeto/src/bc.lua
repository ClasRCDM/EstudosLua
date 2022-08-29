do
    function genCoinTableFileName(day) return 'M'.. day ..'.csv' end

    function genQuotationTableFileName(day) return day .. '.csv' end

    function downloadFile(urls, url, destDir, fileName)
        fileName = FileName or string.match(url, '/([%w.]+)$')
        local downloadCommand = string.format('%s -o %s\\%s %s  2>nul', urls.curl, destDir, fileName, url)
        os.execute(downloadCommand)
    end

    function downloadCoinTable(day, destDir, urls)
        local fileName = genCoinTableFileName(day)
        local url = urls.coin.. '/' ..fileName
        downloadFile(urls, url, destDir)
    end

    function downloadCoinTable(day, destDir, urls)
        local fileName = genQuotationTableFileName(day)
        local url = urls.coin.. '/' ..fileName
        downloadFile(urls, url, destDir)
    end

    function toString(tbMoedas)
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

    function readCoins(csvContents)
        local lines = split(csvContents, "\r?\n")
        table.remove(lines, 1) -- Removendo linha de cabeçalho

        local coins = {}
        for i, line in ipairs(lines) do
            local coinFields = split(line, ";")
            if coinFields[2] ~= nil then
                local coin = Coin.new(unpack(coinFields))
                table.insert(coins, coin)
            end
        end
        return coins
    end

    function filterCoinByCountry(coins, country)
        local ret = {}
        for i, coin in ipairs(coins) do
            if coin.country == country then
                table.insert(ret, coin)
            end
        end
        return ret
    end

    function filterValidCoins(coins)
        local ret = {}
        for i, coin in ipairs(coins) do
            if #coin.dataExclusao == 0 then
                table.insert(ret, coins)
            end
        end
        return ret
    end
end
