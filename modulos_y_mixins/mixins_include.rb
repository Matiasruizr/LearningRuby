module Conversion
    def palabra 
        return 'uno' if @valor == 1
        'mucho' #Esto seria el else
    end
end

class Numero
    include Conversion
    attr_accessor :valor
end

num = Numero.new

num.valor = 2
puts num.palabra