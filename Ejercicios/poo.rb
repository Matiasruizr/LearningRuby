=begin




Se implantaran varios constructores:
Un constructor por defecto.
Un constructor con el nombre, edad y sexo, el resto por defecto.
Un constructor con todos los atributos como parámetro.

=end


#1) Crea una clase llamada Cuenta que tendrá los siguientes atributos: titular y cantidad (puede tener decimales).
class Cuenta
    attr_accessor :titular, :cantidad
    def initialize(params)
        @titular = params[:titular]
        @cantidad = params[:cantidad]

    end

    def presentacion
        "El titular de la cuenta #{@titular} y tiene almacenado en ella #{@cantidad} pesos"
    end
    #Tendrá dos métodos especiales:
    def ingresar(ingreso)
        @cantidad += ingreso
    end

    def retirar(retiro)
        if cantidad - retiro < 0
            puts "No cuenta con el saldo suficiente, lo maximo que puede retirar es #{@cantidad}"
        else
            @cantidad -= retiro
        end
    end
end


#2) Haz una clase llamada Persona que siga las siguientes condiciones:
#Sus atributos son: nombre, edad, DNI, sexo (H hombre, M mujer), peso y altura. No queremos que se accedan directamente a ellos. Piensa que modificador de acceso es el más adecuado, también su tipo. Si quieres añadir algún atributo puedes hacerlo.
#Por defecto, todos los atributos menos el DNI serán valores por defecto según su tipo (0 números, cadena vacía para String, etc.). Sexo sera hombre por defecto, usa una constante para ello.
class Persona
    attr_accessor :dni, :nombre, :edad, :sexo, :peso, :altura

    def initialize(params)
        @dni = generaDNI 
        @nombre = params[:nombre]
        @edad = params[:edad]
        @sexo = params[:sexo]
        @peso = params[:peso]
        @altura = params[:altura]
    end

    def presentacion
        "Su nombre es #{@nombre}, su dni #{@dni} tiene #{@edad} años, es #{@sexo}, pesa #{@peso} peso y mide #{@altura}"
    end

    # calcularIMC(): calculara si la persona esta en su peso ideal (peso en kg/(altura^2  en m)), si esta fórmula devuelve un valor menor que 20, la función devuelve un -1, si devuelve un número entre 20 y 25 (incluidos), significa que esta por debajo de su peso ideal la función devuelve un 0  y si devuelve un valor mayor que 25 significa que tiene sobrepeso, la función devuelve un 1. Te recomiendo que uses constantes para devolver estos valores.
    def calcularIMC
        if @peso/(@altura**2) < 20
            "Su IMC es de: #{@peso/(@altura**2)} esta bajo su peso normal"
        elsif @peso/(@altura**2) >= 20 && @peso/(@altura**2) <= 25
            "Su IMC es de: #{@peso/(@altura**2)} esta en peso normal"
        elsif @peso/(@altura**2) >= 25
            "Su IMC es de: #{@peso/(@altura**2)} esta con sobre peso"
        end
    end
    
    #esMayorDeEdad(): indica si es mayor de edad, devuelve un booleano.
    def esMayorDeEdad
        if @edad > 18 
            true
        else
            false
        end
    end

    #generaDNI(): genera un número aleatorio de 8 cifras, 
    # genera a partir de este su número su letra correspondiente. Este método sera invocado cuando se construya el objeto. Puedes dividir el método para que te sea más fácil. No será visible al exterior.
    def generaDNI 
        @dni = rand(10000000..99999999)
        @dni
    end
end


cuentarut = Cuenta.new(titular: "Matias", cantidad: 10000)

puts cuentarut.presentacion
cuentarut.ingresar(9000)

puts cuentarut.presentacion

cuentarut.retirar(5000)

puts cuentarut.presentacion

matias = Persona.new( nombre: 'matias', sexo: 'hombre',edad: 20, peso: 78, altura: 1.80)


puts matias.presentacion

puts matias.calcularIMC

puts matias.esMayorDeEdad

puts matias.presentacion

=begin
Ahora, crea una clase ejecutable que haga lo siguiente:

Pide por teclado el nombre, la edad, sexo, peso y altura.
Crea 3 objetos de la clase anterior, el primer objeto obtendrá las anteriores variables pedidas por teclado, el segundo objeto obtendrá todos los anteriores menos el peso y la altura y el último por defecto, para este último utiliza los métodos set para darle a los atributos un valor.
Para cada objeto, deberá comprobar si esta en su peso ideal, tiene sobrepeso o por debajo de su peso ideal con un mensaje.
Indicar para cada objeto si es mayor de edad.
Por último, mostrar la información de cada objeto.
Puedes usar métodos en la clase ejecutable, para que os sea mas fácil.
=end