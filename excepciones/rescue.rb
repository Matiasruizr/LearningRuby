#Rescue
#Si se ejecuta un error, actuar de x manera
def suma(a,b)
    a + b
rescue
    puts "No se puede sumer #{a} + #{b}"
end

suma(1,'c')


#
def suma(a,b)
    c = a + b
rescue
    puts "No se puede sumer #{a} + #{b}"
else
    puts c
end

suma(1,2)