def fullname(nombre, apellido)
    nombre + ' ' + apellido
rescue => error
    puts "El error es #{error.message}"
ensure
    return apellido
end

puts fullname(20,'Ruiz')