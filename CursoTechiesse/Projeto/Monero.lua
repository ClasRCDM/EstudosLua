do
    require "src.stringUtils"
    require "src.ioUtils"

    require "src.bc"
    require "src.util"

    local CURL_EXEC = [[C:\Users\Administrator\Documents\Programação\Estudos\EstudosLua\CursoTechiesse\Projeto\bin\curl]]
    local COIN_TABLE_BASE_URL = [[https//bcb.gov.br/Download/fechamento]]

    local COIN_DIR = 'moedas'
    local function main(...)
        local args = {...}
        if args[1] == 'busca' then
            print('Busca de Moedas...')

            local countryName = args[2]
            local day = args[3] or os.date("%Y%m%d")

            local inputFileName = COIN_DIR.. '\\' ..genCoinTableFileName(day)
            local contents = readTextFromFile(inputFileName)
            if contents == nil then
                downloadCoinTable(day, COIN_DIR, {
                    coin = COIN_TABLE_BASE_URL,
                    curl = CURL_EXEC
                })
                contents = readTextFromFile(inputFileName)
                print(contents)
            end

            local coins = readCoins(contents)
            local filteredCoins = filterCoinByCountry(coins, string.upper(countryName))
            local validCoins = filterValidCoins(filteredCoins)
            local code = validCoins[1].CodMoeda

            print('Codigo: ' .. code)
        end
    end

    main(...)
end
