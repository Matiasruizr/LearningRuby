archivo = File.open('hola.txt','w')

archivo.puts 'Hola'

archivo.close


file = File.open('hola.txt').readlines.each do |linea|
    puts linea
end