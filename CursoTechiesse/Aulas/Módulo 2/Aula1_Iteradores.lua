-- Iteradores
do
    -- Contador/Iteretor
    local newCounter; newCounter = function (first)
        local i = first
        local count count = function ()
            local ret = i
            i = i + 1
            return ret
        end
        return count
    end

    -- Istancia o iterador
    local c = newCounter(1)

    -- Chama o iterador
    print(c())
    print(c())
    print(c())
    print(c())
    print(c())
    print(c())
    print(c())
    print(c())
    print(c())
    print(c())
end
