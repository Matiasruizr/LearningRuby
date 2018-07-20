class Ventilador
    def initialize(params)
        @marca = params[:marca]
        if params[:velocidad] > 10
            puts 'error al ingresar la velocidad, ingresa un valor valido'
            @velocidad = 0
        else
            @velocidad = params[:velocidad]
        end
    end

    def presentacion()
        "La marca del ventilador es: #{@marca} y la maxima velocidad es #{@velocidad}" 
    end

    def cambia_velocidad
        if @velocidad >= 10
            @velocidad = 0
        else
            @velocidad += 1
        end
    end
end

puts 'Ingrese la marca del ventilador'
g_marca = gets.chomp
puts 'Ingrese la velocidad del ventilador, la velocidad maxiam es de 10'
g_velocidad = gets.chomp.to_i


ventilador = Ventilador.new(marca: g_marca, velocidad: g_velocidad)

puts ventilador.presentacion

salir = false

while salir == false 
    puts 'Presione 1 para subir la velocidad, o presione 2 para salir'
    opcion = gets.chomp.to_i
    if opcion == 1 
        ventilador.cambia_velocidad  
    elsif opcion == 2
        break
    end

    puts ventilador.presentacion
end



