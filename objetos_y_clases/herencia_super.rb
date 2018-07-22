classPersona
	attr_accessor:nombre

	definitialize(nombre)
		@nombre = nombre
	end

	defdormir(n)
		puts "Duerme #{n} horas"
	end
end

classEmpleado < Persona
	definitialize
		super('Juan')
	end

	defdormir
		super(8)
	end
end

persona  = Persona.new('Jose')
empleado = Empleado.new


puts persona.nombre
puts empleado.nombre
persona.dormir(4)
empleado.dormir