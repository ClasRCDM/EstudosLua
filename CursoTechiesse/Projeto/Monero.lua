do
    require "src.stringUtils"
    require "src.ioUtils"

    require "src.bc"
    require "src.util"

    COIN_DIR = 'moedas'
    local function main(...)
        local args = {...}
        if args[1] == 'busca' then
            print('Busca de Moedas...')

            local countryName = args[2]
            local inputFileName = COIN_DIR.. '\\' ..'M' .. os.date('%Y%m¨%d') .. '.csv'
            local contents = readTextFromFile(inputFileName)
            if contents == nil then
                --pass
            end

            local coins = readTable(contents)
            local filteredCoins = filterCoinByCountry(coins, string.upper(countryName))
            local validCoins = filterValidCoins(filteredCoins)
        end
    end

    main(...)
end
