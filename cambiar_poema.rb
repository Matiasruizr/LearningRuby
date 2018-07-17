array_poema = []
File.open('poema.txt').readlines.each do |linea|
    array_poema << linea.reverse
end

def guarda_archivo(nombre_archivo, poema)
    archivo = File.open(nombre_archivo+'.txt','w')
    archivo.puts poema.reverse
    archivo.close
end

guarda_archivo('poema_volteado',array_poema)

