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
defsumar(x, y)#-> Esto nos retornara la última línea sin utilizar return
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

Eliminar elementos de arreglos:
```
array = [1,2,3,4,5,6,7]

- array.pop: Elimina el último elemento del arreglo.
- array.shift: Elimina el primer elemento del arreglo.
- arra.delete_at(posición del elemento): Elimina un elemento dentro del arreglo.
- array.delete(elemento): Elimina un elemento en específico del arreglo.
- array.uniq: Elimina los elementos repetidos del arreglo.
- array.uniq!: Para que el cambio que hacemos con array.uniq permanezca.
```
Obtener datos de un arreglo:
```
- array.first: Obtiene el primer elemento
- array.last: Obtiene el ultimo elemento
- array[posición del elemento]: Obtiene un elemento que se encuentra en la posicion especificada
- array.take(2): Obtiene los primeros dos elementos
- array.drop(2): Obtiene todos los elementos menos los primeros dos
```

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

El método each es el más utilizado en la comunidad




Otros datos de Ruby
Algo adicional con lo que cuenta Ruby es que sin necesidad de importar módulos adicionales, es decir, una librería adicional, podríamos llamarla.
¿Qué es un módulo? Un módulo para Ruby es cómo podríamos reunir un conjunto de funciones que van a tener un mismo fin.
¿Para qué sirven las comillas dobles en los puts de Ruby? Podemos inyectar código Ruby dentro de una cadena.
