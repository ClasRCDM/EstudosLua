do
    require "src.stringUtils"
    require "src.ioUtils"

    require "src.bc"
    require "src.util"

    CURL_EXEC = [[C:\Users\Administrator\Documents\Programação\Estudos\EstudosLua\CursoTechiesse\Projeto\bin\curl]]
    COIN_DIR = 'moedas'
    local function main(...)
        local args = {...}
        if args[1] == 'busca' then
            print('Busca de Moedas...')

            local countryName = args[2]
            local inputFileName = COIN_DIR.. '\\' .. genCoinTableFileName(day)
            local contents = readTextFromFile(inputFileName)
            if contents == nil then
                downloadCoinTable(day, CORL_EXEC)
            end

            local coins = readTable(contents)
            local filteredCoins = filterCoinByCountry(coins, string.upper(countryName))
            local validCoins = filterValidCoins(filteredCoins)
            local code = validCoins[1].CodMoeda

            print('Codigo: ' .. code)
        end
    end

    main(...)
end
