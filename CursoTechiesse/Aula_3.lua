-- Estrutura de sequencia: --
a, b, c = 1, -5, 6
delta = b^2 - 4 * a * c

x1 = (-b - math.sqrt(delta)) / (2 * a)
x2 = (-b + math.sqrt(delta)) / (2 * a)

print(x1..' | '..x2)
print('-----------------------------------')

-- Estrutura aninhada simples | if, else --
a, b = 1 ,2

if a > b then
    print('A maior que B.')
else
    print('B maior que A.')
end
print('-----------------------------------')

-- Estrutura aninhada complexa | if, elseif, else --
a, b, c = 1, 2, 3

if a > b then
    print('A maior que B.')
elseif a > c then
    print('A maior que C.')
else
    print('B maior que A.')
end
print('-----------------------------------')

-- Estrutura aninhada, Uma linha | if else --
if a < b then print('A menor que B') else print('B menor que A') end
print('-----------------------------------')

-- Estrutura de repetição simples | for, while, repeat --
t = {1, 45, 5, 2, 5}
for i = #t, 1, -1 do
   print(t[i]..' - '..i)
end
print('-----------------------------------')

t = 0
while t <= 6 do
    print(t)
    t = t + 1
end
print('-----------------------------------')

t = 0
repeat
    print(t)
    t = t + 1
until t >= 6
