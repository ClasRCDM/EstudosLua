do
    local function readTextFromFile(FileName)
        local file = io.open(FileName, 'r')
        if file == nil then
            return nil, 'Não foi possivel abrir o arquivo ' .. FileName
        end

        local contents = file:read('*a')
        file:close()
        return contents
    end

    local function saveTextToFile(text, FileName)
        local file = io.open(FileName, 'w')
        local res = file:write(text)
        file:close()
        return res
    end
end
