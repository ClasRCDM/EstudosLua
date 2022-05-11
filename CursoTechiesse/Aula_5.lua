-- Multiplos valores de retorno --
local function bhask(a, b, c)
    local delta = b^2 - 4 * a * c

    local x1 = (-b - math.sqrt(delta)) / (2 * a)
    local x2 = (-b + math.sqrt(delta)) / (2 * a)

    return x1, x2
end

--
do
    local p, q = bhask(1, -5 ,6)
    print(p, q)
end

-- Varargs | Unpack --
local function concatenar(...)
    local args, ret = {...}, ''

    for _, str in ipairs(args) do
        ret = ret .. str
    end
    return ret
end

--
do
    print(concatenar('Olá', ', ', 'Mundo!!'))

    local x, y = 2, 4
    local xy = {"(", tostring(x), ' - ', tostring(y), ")"}
    print(concatenar(table.unpack(xy)))
end

-- Closures --
local function Gensoma(parcela)
    local s = function (b)
        return parcela + b
    end
    return s
end

--
do
    local soma2 = Gensoma(10)
    print(soma2(10))
end
