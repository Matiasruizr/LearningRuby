#Verificar si un numero es divisible entre 1 y si mismo

def es_primo?(numero)
    (2..(numero -1)).each do |i|
        if numero % i == 0
            return false
        end
    end
   return true
end

puts 'Ingrese un numero para verificar si es primo'

numero = gets.chomp.to_i

if es_primo?(numero)
    puts "El numero #{numero} si es primo"
else 
    puts "El numero #{numero} NO es primo"
end