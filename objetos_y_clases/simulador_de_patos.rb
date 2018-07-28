class Pato 
    attr_accessor :nombre, :color 

    def initialize(params)
        @nombre = params[:nombre]
        @color = params[:color]
    end
    
    def cuackar
        puts 'Cuack cuack'
    end

    def nadar
        puts 'Nadando patisticamente'
    end

    def volar
        puts 'Volando patisticamente'
    end

    def presentacion
        puts 'Soy un pato'
    end
end

class Mallard < Pato
       
    def Presentacion
        puts "Soy un pato llamado #{@nombre} soy de color #{@color} y soy de tipo mallard"
    end
end

class Blanco < Pato
    
    def Presentacion
        puts "Soy un pato llamado #{@nombre} soy de color #{@color} y soy de tipo blanco"
    end
end

juan = Blanco.new(nombre: 'Juan', color: 'Blanco con cafe')
matias = Mallard.new(nombre: 'matias', color: 'Verde')

