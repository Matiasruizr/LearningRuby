#Raise
def porcentaje(porciento,numero)
    raise TypeError, 'El primer argumento no es un numero' if !porciento.is_a?(Numeric)
    raise TypeError, 'El segundo argumento no es un numero' if !numero.is_a?(Numeric)
 (porciento * 100) / numero
end

puts porcentaje(10,100)

