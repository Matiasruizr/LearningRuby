require './simulador_de_patos'

class PatitoGoma < Pato
    def cuackar
        puts 'Squeeck'
    end
    def volar
        puts "No puedo volar"
    end
end