class Ventilador
    attr_accessor :marca
    def initialize(params)
        @marca = params[:marca]
    end
 
end

v = Ventilador.new(marca: 'XYZ')
v.marca = "wxx"

puts v.marca