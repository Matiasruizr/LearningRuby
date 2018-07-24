module Conversion
    def palabra 
        return 'uno' if @valor == 1
        'mucho' #Esto seria el else
    end
end

class Numero
    attr_accessor :valor
    def palabra
        @valor.to_s
    end
end

num = Numero.new

num.extend(Conversion)
num.valor = 10
puts num.palabra