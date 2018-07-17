def es_par?(numero)
    numero % 2 == 0
    if numero%2 == 0
        puts "El numero #{numero} es par"
    else
        puts "El numero #{numero} es impar"
    end
end

puts 'Escribe tu numero para saber si es par'
numero = gets.chomp.to_i

es_par?(numero)