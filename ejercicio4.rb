class Dog
	attr_reader :propiedades
	def initialize(propiedades)
		@propiedades = propiedades
	end

	def ladrar
		puts "#{@propiedades[:nombre]} esta ladrando!!"
	end

end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

Dog.new(propiedades).ladrar

