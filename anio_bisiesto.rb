def divisible?(numero,divisor)
    numero % divisor == 0
end

def es_bisiesto?(anio)
    if divisible?(anio, 4) && (!divisible?(anio, 100) || divisible?(anio, 400))
        puts "El año #{anio} es bisiesto"
    else
        puts "El año #{anio} NO es bisiesto"
    end
end

puts 'Ingresa un año para saber si es bisiesto'
anio = gets.chomp.to_i

es_bisiesto?(anio)