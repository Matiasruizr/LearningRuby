=begin
  Crear un programa al cual se le diga por teclado un caracter y un número,
  a partir de ese caracter y ese numero cree una cuadrado de caracteres.
  Por ejemplo si le pasamos el asterisco * y el numero 4 muestre lo siguiente
  como resultado:
****
*  *
*  *
****
=end
def cuadrado(caracter,alto)
    alto.times do |i|
        if i == 0 || i == (alto - 1)
            puts caracter * alto
        else
            puts caracter+(' '*(alto- 2))+caracter
        end
    end
end
puts 'Escriba el caracter con el cual se formara el cuadrado'
caracter = gets.chomp
puts 'Escriba el alto que tendra el cuadrado'
alto = gets.chomp.to_i

cuadrado(caracter,alto)
