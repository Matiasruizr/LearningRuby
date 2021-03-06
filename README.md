# LearningRuby
Este repositorio tiene como objetivo funcionar como apuntes de mi proceso de aprendizaje de ruby y que pueda servirle a cualquier otra persona que este en el mismo proceso, todo lo escrito aquí es la forma en que yo logre desglosar el contenido de diversas fuentes por las cuales estoy estudiando para dominar el lenguaje. Se da por hecho que se tiene nociones de programación básica al intentar aprender este lenguaje por lo que se omitiran explicaciones a los conceptos más básicos.

# Características de Ruby:

Casi todo en Ruby está orientado a objetos.
Es un lenguaje interpretado, no necesita un compilador externo para poder ejecutarse.
Es dinámicamente tipado, lo que significa que no necesitamos definir cierto tipo de variables, sino que el lenguaje lo va a interpretar por nosotros.
Es muy expresivo. Es muy parecido al lenguaje humano lo que lo hace muy fácil de leer.
Este lenguaje nombra a sus librerías “Gemas”.
Utiliza frameworks para hacer aplicaciones web.
Tiene una gran comunidad.

# ¿Como puedo ejecutar mi primer codigo ruby?
Podemos ejecutar nuestro primer codigo desde el interprete IRB, por ejemplo el ya clasico Hola Mundo
```
puts 'Hello world'
```

Tambien podemos escribir nuestro codigo en un archivo con la extension .rb y ejecutarlo desde la terminal:
```
Ruby hola_mundo.rb
```
# Variables

Deben empezar con un letra minúscula o un guión bajo (_), se recomienda el uso de la convención “snake_case” con el fin de identificarlas fácilmente y no puede contener palabras reservadas del lenguaje.
Cuando Ruby encuentra una palabra decide qué es de la siguiente forma:
Primero, si hay un signo de igualdad (=) a la derecha de la palabra, es una variable local a la que se le asigna un valor.
Identifica si es una palabra reservada del lenguaje y de ser así cumplirá su función.
Si no se cumple ninguno de los anteriores casos, Ruby asume que es un método.
Cuando se hace referencia a una variable local sin inicializar, se interpreta como una llamada a un método que no tiene argumentos.

# Matemáticas en Ruby
Podemos realizar operaciones simples y nos devolverá un resultado.

En el caso de las divisiones, el resultado que nos va a arrojar siempre va a ser un número entero sin importar si el número tiene decimal. Para poder obtener números decimales en la respuesta simplemente debemos convertir uno de los números de la operación en un número decimal.

Para realizar obtener el residuo, utilizamos %.

Para realizar potencias debemos colocar ** seguido de la potencia.

Los operadores matemáticos son los que retornan un número.

Los operadores booleanos son los que retornan true o false. Estos operadores se dividen en:

a) Comparativos. Comparan dos números o dos palabras.

b) Lógicos. Necesitan valores booleanos para poder ser comparados.



# Estructuras selectivas

Las estructuras selectivas son esos fragmentos de código en los que se evalúa una condición y según el resultado es que podemos tomar la decisión de qué camino tomar.

If, elsif, else = Lo que hacen es preguntar si una condición se cumple para ejecutar el código en función de esa condición.

case, when, else = Tomamos una variable con distintos casos con los cuales queremos que se compare.

```
Utilizando IF
nombre = gets.chomp;

if nombre == 'matias'
    puts "Bienvenido #{nombre}";
elsif nombre == 'jesus'
    puts "Hola nuevamente #{nombre}";
else 
    puts 'No estas autorizado'
end
``` 
```
Utilizando CASE
nombre = gets.chomp;

case nombre
when 'matias'
    puts "Bienvenido #{nombre}";
when 'jesus'
    puts "Hola nuevamente #{nombre}";
else 
    puts 'No estas autorizado'
end
``` 

# Conversiones
Podemos cambiar el tipo de dato de las variables en ruby

Para transformar a un string 
```
.to_s
```
Para transformar a un integer
```
.to_i
```
Para transformar a un float
```
.to_f
```


# Definición e invocación de métodos

Los metodos son una sección de código que podemos reutilizar y a la cual vamos a poder nombrar. Este bloque de código debe ser escrito para una tarea en específico en el programa.

Nos permite reutilizar codigo, ademas de reconocer facilmente donde esta algun eventual error.

Los métodos se definen en tres partes:

- El encabezado o cabecera: Consta de la palabra reservada “def” seguida por el nombre del método que necesitemos y una parte opcional son los argumentos que le podemos pasar.
- El cuerpo: Es la parte en la que va el código que debemos ejecutar.
- El fin: Sería la palabra reservada “end”
```
#Sin argumento
 def saludo
    puts 'Hola'
 end

 saludo
```
```
#Con argumento
def saluda_persona(nombre)
    puts "Hola #{nombre}"
end

saluda_persona('Matias')
```
```
#Con arreglo de argumentos
def saluda_persona(*nombres)
    puts "Hola #{nombres[0]}"
    puts "Hola #{nombres[1]}"
end

saluda_persona('Matias','Jesus')
```
```
#Con valores por defecto
def saluda_persona(nombre="humano")
    puts "Hola #{nombre}"
end

saluda_persona
```
```
#Metodo con hash como parametro
def saludo(hash)
    puts "Hola"
    puts "Tu nombre es #{hash[:nombre]}"
    puts "Tu apellido es #{hash[:apellido]}"
end

saludo({nombre: 'Matias', apellido: 'Ruiz'})
```
Valores de retorno, en ruby no es necesario agregar la palabra return, pues nos retornara de manera automatica la ultima linea del metodo
```
def sumar(x, y)#-> Esto nos retornara la última línea sin utilizar return
   x + y
end
resultado = sumar(5+7)
puts "El resultado de la suma es #{resultado}"
```

# Arreglos
Un arreglo puede definirse como un grupo o una colección finita, homogénea y ordenada de elementos.

Los arreglos en Ruby no necesariamente pueden ser de la misma clase, es decir, podemos construir un arreglo con números, cadenas, arreglos dentro de un arreglo o flotantes y eso en Ruby no afectaría o haría ningún cambio.

```
Ejemplos de arreglos en Ruby:
array = Array.new
array = Array.new(10)
array = Array.new(10, “hola”)
array = Array(1…5)
array = [1,2,3]

Modificar arreglos en Ruby:
array = [1,2,3]
array.push(4)
array << 5
array.unshift(0)
array.insert(3, ´nuevo´)
```

Consultar elementos de arreglos:
```
#Primer elemento
array[0]
```
```
#Ultimo elemento
array[-1]
```

Eliminar elementos de arreglos:
```
array = [1,2,3,4,5,6,7]

- array.pop: Elimina el último elemento del arreglo.
- array.shift: Elimina el primer elemento del arreglo.
- arra.delete_at(posición del elemento): Elimina un elemento dentro del arreglo.
- array.delete(elemento): Elimina un elemento en específico del arreglo.
- array.uniq: Elimina los elementos repetidos del arreglo.
- array.uniq!: Para que el cambio que hacemos con array.uniq permanezca.
- array.include? "elemento": Devuelve si existe o no este objeto
- array.count {|x| x == "q" } : Devuelve cuantos elementos cumplen esta condicion
- array.map {|x| x *2 } : Devuelve un array con todos sus elmentos multiplicados por 2
- array.select {|x| x.odd } : Devuelve un array filtrando la condicion (como filter de JS)
- array.min: Devuelve el elemento más pequeño
- array.max: Delueve el elemento más grande
- array.sum: Devuelve la suma de todo
- array.sort: Devuelve el arreglo ordenado

```
Obtener datos de un arreglo:
```
- array.first: Obtiene el primer elemento
- array.last: Obtiene el ultimo elemento
- array[posición del elemento]: Obtiene un elemento que se encuentra en la posicion especificada
- array.take(2): Obtiene los primeros dos elementos
- array.drop(2): Obtiene todos los elementos menos los primeros dos
```

# Transformando un String en un Array y viceversa

"hola mundo".split("")
"hola mundo".split.map { |x| x.ord }
"hola mundo".split.map { |x| x.upcase }.join

# Metodos utiles para arreglos
Lista de métodos de arreglos en Ruby:

include: Busca dentro del arreglo si existe o no el elemento que le preguntemos.

map (map!): Funciona como each, pero adicional se puede editar o sobre escribir el valor de nuestro arreglo. Para que los cambios en el arreglo permanezcan, escribimos un signo de exclamación después del método.

map &:even?: Even funciona en Ruby para indicarnos si el número es par o es impar. Al utilizarlo en el método map, nos va a ayudar a saber el estado de cada uno de los elementos que componen el arreglo.

reduce

select: Realiza una consulta entre cada uno de los elementos del arreglo y selecciona según la indicación que le demos.

reject: Rechaza a todos los elementos del arreglo según la indicación que le demos.
drop_while: Funciona como el método reject.

delete_if: Este método también funciona similar al reject.

keep_if: Funciona similar al método select.

any?: Nos ayuda a saber si alguno de los elementos del arreglo cumple con la condición que le establezcamos.

all?: Nos ayuda a saber si todos los elementos del arreglo cumplen con la condición que le establezcamos.

& (intersección): Nos ayuda a crear una intersección diciéndonos qué elementos tenemos en común entre diferentes arreglos.

asterisco (*) (por un entero y por un string): Nos ayuda a multiplicar los elementos del arreglo por el valor que le indiquemos.
suma y resta

collect: Es un alias del método map

each_with_index: Nos va a devolver primero el valor y luego el index que estemos llamando.

flatten!: Nos permite tener un arreglo simple.

# Rangos

Que fácil es contar los elementos generados por un array

('aa'..'zz').to_a.count
=> 676
Aunque elementos decimales no pueden ser convertibles a un arreglo, si intentamos convertir un rango decimal a un arreglo nos va a devolver un error, por suerte si se pueden utilizar otros métodos determinísticos como include? o member?
Si el primer valor del rango es un entero y el segundo es un decimal, todo el rango se convierte en entero.
El valor decimal del ultimo dato del rango no es redondeado sino que es truncado (osea no se toma en cuenta el valor decimal, por lo que 4.4 y 4.6 quedan finalmente como un simple 4)
El valor de los rangos tienen que ser del mismo tipo, si pongo un numero y una letra, el rango no se crea, otra forma de crear el rango .
Los rangos también pueden elaborarse a partir de otros tipos de objetos pero estos tienen que ser compatibles.


# Regex o «expresiones regulares»

Una expresión regular viene a ser un patrón, que se ajusta a un string para que coincida o no, son una poderosa herramienta para trabajar con texto.

Un regex se declara entre slash “/”
Un regex puede tener multiples matches
Algunas abreviaciones para clases de caracteres

Todas las abreviaciones precedentes, también tienen una forma negada. Para ello, se pone la misma letra en mayúsculas:
Expresión -> Significado
.	cualquier carácter|
[]	especificación por rango. P.ej: [a-z], una letra de la a, a la z
\w	letra o número; es lo mismo que [0-9A-Za-z]
\W	cualquier carácter que no sea letra o número
\s	carácter de espacio; es lo mismo que [ \t\n\r\f]
\S	cualquier carácter que no sea de espacio
\d	número; lo mismo que [0-9]
\D	cualquier carácter que no sea un número
\b	retroceso (0x08), si está dentro de un rango
\b	límite de palabra, si NO está dentro de un rango
\B	no límite de palabra
*	cero o más repeticiones de lo que le precede
+	una o más repeticiones de lo que le precede
$	fin de la línea
{m,n}	como menos m, y como mucho n repeticiones de lo que le precede
?	al menos una repetición de lo que le precede; lo mismo que {0,1}
()	agrupar expresiones
|*	operador lógico O, busca lo de antes o lo después


# Estructuras repetitivas

La estructuras repetitivas las utilizamos para iterar sobre un arreglo para obtener cierto tipo de información o manejar de alguna forma los datos que tenemos guardados.

Existen 3 métodos con los cuales podemos iterar sobre un arreglo:

- Método each: Vamos a invocar este método para poder ver cada uno de los elementos e ir asignando el valor que corresponde a cada espacio del arreglo.
```
#bucle for each
a.each do |numero|
    puts numero
end
```
- Método for: Hace la misma función que each.
```
# Bucle for
for element in a
    puts element
end
```
- Método while: Nos ayuda a determinar el tamaño total de nuestro arreglo.
```
#Bucle while
i = 0
while i < a.size
    puts a[i]
    i += 1
end
```
Ejecutar un codigo N veces
```
numero.times{

}
```



El método each es el más utilizado en la comunidad


# Hashes
Es una estructura que almacena datos como un diccionario lo haría (valor -> 10. Información asociada a ese valor)
Los hashes son diccionarios llave valor que podemos utilizar en Ruby.

El siguiente hash tiene como indice el nombre
hash = {'Nombre': 'Matias'}
hash["apellido"] = "Matias"

hash.has_value? "Matias": Devuelve si existe o no el valor "Matias" en alguna llave
hash.has_key? "Nombre": Devuelve si existe la llave Nombre
hash.merge(otrohash): Mezcla dos hash
hash.invert: Invierte valores a llaves y llaves a valores
hash.transform_values {|x| x.uppercase }: Transforma todos los valores
hash.map {|k,v| "El usuario tiene como #{k}: #{v}"}: Modifica los valores a su antojo, se suele ocupar como parametro k y v (key, value)
array.to_h: Transforma un array en hash


# Blocks 
Un bloque es una porción de código encerrada entre paréntesis {} o entre do…end. Por lo tanto, un bloque es una forma de agrupar instrucciones, y solo puede aparecer después de usar un método: el bloque empieza en la misma línea que usa el método. El código dentro del bloque no es ejectuado en el instante que el intérprete de Ruby lo encuentra: Ruby se recordará del bloque (variables locales, …) y después entra en el método, ejecutando el bloque cuando es preciso.

También llamados funciones sin nombre.
Van entre llaves {} o entre do…end.
Depende de un método asociado para funcion
```
def ejecutar(&block)
    if block_given?
        yield
    else
        puts 'No tiene un bloque asignado'
    end
end

ejecutar { puts 'Hola' }
```

# Procs y lambdas
Son métodos sin nombre.
Se pueden asignar a una variable.
Se tienen qué llamar (.call) para que se puedan ejecutar.
Lambdas es un método que está heredando todos los métodos que tiene procs.
Proc es la clase padre de lambda

Ejemplos:
```
saludar = proc { puts "Hola" }
saludar.call
```
```
saludar = proc {|nombre| puts "Hola #{nombre}" }
saludar.call('Matias')
```

# Leer archivos en ruby
La lectura de archivos es bastante simple, 
podemos crear o editar un nuevo archivo escribiendo 
```
File.open('prueba.txt','w') #W es de Write, podria ser R para Read
```
Esto podemos almacenarlo en una variable para tener mas control
```
archivo = File.open('prueba.txt','w') #W es de Write, podria ser R para Read
```
Podemos hacer cosas como agregarle lineas
```
archivo.puts 'Hola mundo!'
archivo.close #No guardara los cambios hasta que cerremos el archivo
```
Podemos leer un archivo de la siguiente manera
```
archivo = File.open('prueba.txt','r')
puts archivo
```
Tambien podemos iterar sobre cada linea del archivo de la siguiente manera
```
File.open('prueba.txt').readlines.each do |linea|
    puts linea
end
```
# Manejo de excepciones

El manejo de excepciones nos sirve para controlar los errores que Ruby nos arroja por defecto cuando ejecutamos un código.

Existen cierto tipo de palabras reservadas para este manejo de excepciones:


begin, end: Para definir un bloque. (Similar a un bloque anonimo plsql)

rescue: Para controlar una excepción.
Por ejemplo, en un metodo que busca dividir 100 entre x numero, no podriamos dividir por 0
```
def cien_entre(a)
    100 / a
rescue
     "No se puede dividir por #{a}"
end

puts cien_entre(0)
```
else: Código que se ejecuta si no hubo excepciones.
```
def cien_entre(a)
    b = 100 / a
rescue
     "No se puede dividir por #{a}"
else
     "El resultado es #{b}"
end
```
ensure: Para forzar que se ejecute código si se lanza o no una excepción.
raise o fail: Para lanzar una excepción.

# Clases y objetos

Podemos crear una clase pasandole al objetos sus atributos por un hash
```
class Ventilador
    def initialize(params)
        @marca = params[:marca]
        @velocidad = params[:velocidad]
    end
end
```

Para crear un objeto nuevo utilizamos:
```
ventilador1 = Ventilador.new(marca: 'Sony', velocidad: 10)
```

Para poder acceder a sus distintas propiedades o modificarlas de manera externa creareamos los getters y setters cuando corresponda
```
class Ventilador
    def initialize(params)
      @marca = params[:marca]
      @velocidad = params[:velocidad]
    end
    def marca
      return @marca
    end
    def marca=(nueva_marca)
      @marca = nueva_marca
    end
  end
  
  ventilador1 = Ventilador.new(marca:'Xyz', velocidad: 10)
  
  ventilador1.marca = 'Wxz'
  
  puts ventilador1.marca()
```
La forma abreviada de hacer esto y por lo tanto la mas utilizada seria
```
class Ventilador
    attr_accessor:marca # Definimos acceso a getter y setter para marca
    
    def initialize(params)
      @marca = params[:marca]
      @velocidad = params[:velocidad]
    end
   
  end
```

# Scopes de variables

Variables locales:

Se usan a nivel de los métodos o bloques. Esto quiere decir que su tiempo de vida es solo dentro de un método o solo dentro de un bloque.
Deberían comenzar con minúscula o con _.
Siempre vamos a saber exactamente hasta dónde vive una variable local.


Variables de instancia:

Solo va a tener un valor dentro de un objeto, es decir que su tiempo de vida es solo dentro de un objeto.
Solo cobra vida cuando vamos a iniciar una clase.
Todas las variables de instancia inician con un solo @


Variables de clase:

Inician con dos @
Se considera una variable que pueda ser declarada apenas inicie la clase sin necesidad de de llamarla a través de métodos o de inicializarla a través de métodos.


Variables globales:

Se usan a nivel de todo el programa.
Deberían iniciar con $.


Podemos saber de que tipo es una variable utilizando 
```
defined? variable
```
# Constantes

Tienen el mismo alcance que una variable, de acuerdo al lugar donde son declaradas.
Inician con una letra mayúscula o pueden ser todas mayúsculas.
No deberían cambiar su valor.

# Encapsulamiento

La programación orientada a objetos tiene ciertas características, como por ejemplo, el encapsulamiento.
Estas son algunas características del encapsulamiento:

Exponer el comportamiento externo de la clase mediante métodos.
Proteger los datos internos.
Scopes en Ruby: public, protected, private.
Accessors.
Tipos de Accessors:

attr_reader
attr_writer
attr_accessor
Los modificadores de acceso son el acceso que le podemos dar a distintos métodos, estos pueden ser:

- Public. Default
- Private. Solo van a funcionar en esa clase, no se pueden llamar desde el objeto ni pueden heredar una clase hijo.
- Protected. No se pueden llamar una vez creado el objeto, pero sí va a poder heredar una clase hijo.

#Características de las herencias en Ruby:

Mecanismo para reutilizar código.
Una clase (hija) extiende el comportamiento de otra clase (padre).
Aplican las modificaciones de acceso.
Se pueden sobre-escribir los métodos.
Todas las clases heredan de BasicObject.
No existe herencia múltiple.
Ruby tiene una palabra reservada para el caso de herencias llamada “super”. Lo que hace super es poder obtener todas las líneas de código que tiene el mismo método en una clase padre.

# Modulos

Es un conjunto de metodos variables y constantes
Como una clase no instanciable
Permite herencia multiple
```
module Modulo
    def metodo1
    end

    class Clase1
    end
end
``` 
Para acceder al valor de un metodo debemos usar ::
```
Modulo::metodo1
```
Podemos utilizar los metodos como namespace para evitar conflictos con los nombres


# Mixins 

Estan diseñados para que los modulos puedan utilizarse como herencia multiple.

- Son una mezcla entre modulos y clases
- Es una clase que implementa un modulo
- Se puede crear mediante 

Metodo include
 Esto incluye las caracteristicas del metodo para todos los objetos creados con la clase Numero en este caso.
```
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
```
Metodo extend
 Esto incluye las caracteristicas del metodo para un objeto en especifico 
```
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

num.extend(Conversion)#Solo se extiende para este objeto
num.valor = 10
puts num.palabra
```

# Poliformismo

Las subclases pueden definir su comportamiento propio y compartir la funcionalidad de la clase padre.

los métodos se pueden sobre-escribir.
```
class Pajaro
    def volar
        puts 'Puedo volar'
    end
end

class Pinguino < Pajaro
    def volar
        puts 'No puedo volar soy un pinguino'
    end
end
```
# Gemas

Para utilizar gemas simplemente utilizamos 

```
gem install nombre_de_gema
```

Y la utilizamos en nuestro archivo.rb con 
```
require 'nombre_de_gema'
```

Gema interesante: Rubocop, analiza el codigo y lo compara con la guia de convenciones de ruby. advirtiendonos cuando estas convenciones no se cumplieron
```
gem install rubocop
```
```
rubocop my_app.rb
```

Bundler nos permite gestionar las dependencias de librerias(gemas) para nuestros proyectos ruby
Para instalar bundler ejecutamos el comando

gem install bundler
Ahora disponemos del comando bundle. Con el comando bundle init generamos un archivo llamado Gemfile donde podemos definir las dependencias de gemas para nuestro proyecto ruby

Agregando gemas a Gemfile

gem 'faker'
Es una buena practica especificar la version

gem 'faker', '~> 1.9'
Ahora es el momento de confirmar nuestras dependencias utilizando el comando

bundle install
Esta instruccion verifica las dependencias y procede a instalar las gemas. Tambien generará un archivo llamado Gemfile.lock que especifica las versiones de gemas utilizadas en nuestro proyecto

Donde buscar gemas:

Rubygems

The Ruby Toolbox



# Testing en Ruby

Test Driven Development

Usaremos RSpec

# Scrapping



# Otros datos de Ruby
Todos los metodos finalizados en ? nos devuelven un booleanos
Todos los metodos finalizados en ! hace cambios permanentes en el elemento
Algo adicional con lo que cuenta Ruby es que sin necesidad de importar módulos adicionales, es decir, una librería adicional, podríamos llamarla.
¿Qué es un módulo? Un módulo para Ruby es cómo podríamos reunir un conjunto de funciones que van a tener un mismo fin.
¿Para qué sirven las comillas dobles en los puts de Ruby? Podemos inyectar código Ruby dentro de una cadena.


# Metodos utiles

x.class : Devuelve el tipo de dato para la variable x
x.methods : Devuelve todos los metodos disponibles para esta varialb
