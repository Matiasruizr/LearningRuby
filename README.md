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

Otros datos de Ruby
Algo adicional con lo que cuenta Ruby es que sin necesidad de importar módulos adicionales, es decir, una librería adicional, podríamos llamarla.
¿Qué es un módulo? Un módulo para Ruby es cómo podríamos reunir un conjunto de funciones que van a tener un mismo fin.
¿Para qué sirven las comillas dobles en los puts de Ruby? Podemos inyectar código Ruby dentro de una cadena.
