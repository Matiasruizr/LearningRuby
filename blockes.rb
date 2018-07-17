def ejecutar(&block)
    if block_given?
        yield
    else
        puts 'No tiene un bloque asignado'
    end
end

ejecutar { puts 'Hola' }