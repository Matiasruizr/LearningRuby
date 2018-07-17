=begin
  Crear un programa al cual se le diga por teclado un caracter y un número,
  a partir de ese caracter y ese numero cree una piramide de caracteres.
  Por ejemplo si le pasamos la el asterisco * y el numero 3 muestre lo siguiente
  como resultado:
     *
    ***
   *****
  *******
=end

def piramide(caracter,niveles)
    output = caracter
    for i in 1..niveles
        puts " " * (niveles - i) + output
        output += caracter * 2
    end
end

puts 'Ingrese el caracter a repetir'
caracter = gets.chomp
puts 'Ingrese la cantidad de niveles de la piramide'
niveles = gets.chomp.to_i


piramide(caracter,niveles)
