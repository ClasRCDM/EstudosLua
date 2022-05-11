-- Chuncks --
do
    local v2 = {22, 310, 55, 62, 45}

    local maior = v2[1]
    for i = 2, #v2 do
        if v2[i] > maior then
            maior = v2[i]
        end
    end
    print(maior)
end

-- Funções --
local function Maior(v2)
    local maior = v2[1]
    for i = 2, #v2 do
        if v2[i] > maior then
            maior = v2[i]
        end
    end
    print(maior)
end

do
    local v2 = {22, 310, 55, 62, 45}
    Maior(v2)
end
