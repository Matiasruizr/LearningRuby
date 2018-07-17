def saluda_persona(*nombres)
    puts "Hola #{nombres[0]}"
    puts "Hola #{nombres[1]}"
end

saluda_persona('matias','jesus')

#Con valores por defecto
def saluda_persona(nombre="humano")
    puts "Hola #{nombre}"
end

saluda_persona

#Metodo con hash como parametro
def saludo(hash)
    puts "Hola"
    puts "Tu nombre es #{hash[:nombre]}"
    puts "Tu apellido es #{hash[:apellido]}"
end

saludo({nombre: 'Matias', apellido: 'Ruiz'})

