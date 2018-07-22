class Mamifero
    def respirar
        puts 'inhala, exala'
    end
end

class Perro < Mamifero
    def ladrar
        puts 'Woof woof'
    end
end

mamifero =Mamifero.new 
bobby = Perro.new;

mamifero.respirar

puts 'Ahora bobby'
bobby.respirar
bobby.ladrar