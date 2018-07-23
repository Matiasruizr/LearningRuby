class Ventilador
    attr_writer :marca
    def initialize(params)
        @marca = params[:marca]
    end
    def presentacion
        "La marca es #{@marca}"
    end
end

v = Ventilador.new(marca: 'XYZ')
v.marca = "wxx"

puts v.presentacion