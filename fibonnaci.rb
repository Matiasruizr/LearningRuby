=begin
   Cada termino en la sucesion de Fibonacci se genera mediante
   la adicion de los dos elementos anteriores.
   Al comenzar con 1 y 2 los primeros 10 elementos seran
   1,2,3,5,8,13,21,34,55,89
   Al tener en cuenta los terminos de la sucesion de fibonacci cuyos valores no superan los cuarenta, hallar la suma de los elementos impares 
=end
def crear_serie(numero)
    array = [1,2]
    (numero -2).times{
        array <<  array[-1] + array[-2]
    }
    array
end

def arreglo_impares(arreglo)
    nuevo_array = []
    arreglo.each do |elemento|
        if elemento < 40
            if elemento % 2 != 0
                nuevo_array << elemento
            end
        end
    end
    nuevo_array
end

fibonnaci = crear_serie(40)
impares = arreglo_impares(fibonnaci)
suma_impares = impares.reduce(:+)

puts fibonnaci
puts '==='
puts suma_impares