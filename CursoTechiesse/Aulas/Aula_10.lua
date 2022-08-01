-- Modulos --
-- dofile('Aula_10_modulos.lua') -- chama a biblioteca
-- porem se for chamada de novo elá redefine e executa tudo novamente

modulo = require('Aula_10_modulos') -- Chama a biblioteca e não a repete
-- caso seja chamada nenovo

print(modulo.split('a, b, c, d', ','))
