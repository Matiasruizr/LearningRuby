class Ventilador
    attr_reader :marca
    def initialize(params)
        @marca = params[:marca]
    end
end

v = Ventilador.new(marca: 'XYZ')

puts v.marca