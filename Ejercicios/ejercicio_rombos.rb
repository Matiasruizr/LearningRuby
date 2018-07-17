
=begin
  Crear un rombo de caracteres a partir de un número, ese número tiene que
  ser apto para crear el rombo, por ejemplo 3, 5, 7, 9 que definen la altura
  en caracteres del rombo.
Si se le pasa 3
 *
* *
 *
Si se le pasa 5
  *
 * *
*   *
 * *
  *
Si se le pasa 7
   *
  * *
 *   *
*     *
 *   *
  * *
   *
Si se le pasa 9
    *
   * *
  *   *
 *     *
*       *
 *     *
  *   *
   * *
    *
=end

def rombo(caracter, altura)
   
    if altura % 2 == 0
        puts "La altura debe ser impar"
    else
        sum = 0
        altura.times do |i|
            if i == 0 || i == (altura - 1) 
                puts (' ' * altura) + caracter
            elsif i <= (altura / 2).to_i
                puts (' ' * (altura - i)) + caracter + ' '*((i*2)-1) + caracter
                #puts (' ' * (altura + i)) + caracter
            else
                sum += 1
                puts (' '*sum )+ caracter + (' ' * sum)
            end
        end
        
    end
end

rombo('x',9)