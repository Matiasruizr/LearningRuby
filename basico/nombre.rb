
puts 'Escribe tu nombre'
nombre = gets.chomp;

=begin
# If
if nombre == 'matias'
    puts "Bienvenido #{nombre}";
elsif nombre == 'jesus'
    puts "Hola nuevamente #{nombre}";
else 
    puts 'No estas autorizado'
end
=end

=begin
# Case
case nombre
when 'matias'
    puts "Bienvenido #{nombre}";
when 'jesus'
    puts "Hola nuevamente #{nombre}";
else 
    puts 'No estas autorizado'
end
=end