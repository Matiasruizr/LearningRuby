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
_marca = gets.chomp
puts 'Ingrese la velocidad del ventilador, la velocidad maxima es de 10'
_velocidad = gets.chomp.to_i


ventilador1 = Ventilador.new(marca: _marca, velocidad: _velocidad)

puts ventilador1.presentacion

salir = false

while salir == false 
    puts 'Presione 1 para subir la velocidad, o presione 2 para salir'
    opcion = gets.chomp.to_i
    if opcion == 1 
        ventilador1.cambia_velocidad  
    elsif opcion == 2
        break
    end

    puts ventilador1.presentacion
end




