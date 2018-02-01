class MyPet
	def initialize name
		@name = name
		@sleep = false
		@satisfied = 10 # Esta lleno
		@fullIntestine = 0 # No necesita ir
		puts @name + ' nace '
	end

	def walk
		puts 'Haces caminar a ' + @name + '.'
		@satisfied -= 2
		@fullIntestine = 2
		timeLapse
	end

	def wc
		puts 'Haces ir al baño a ' + @name + '.'
		@satisfied += 2
		@fullIntestine -= 2
		timeLapse
	end

	def eat
		puts 'Haces comer a ' + @name + '.'
		@satisfied += 2
		@fullIntestine += 2
		timeLapse
	end

	def sleep
		puts 'Haces dormir a ' + @name + '.'
		@satisfied -=2
		@sleep = true
		timeLapse
	end

	def hungry?
		if @satisfied <= 2
		end
	end

	def needToGo?
		if @fullIntestine >= 10
		end
	end

	def timeLapse
		if @satisfied > 0
		# Mueve el alimento del estomago al intestino.
		@satisfied = @satisfied - 1
		@fullIntestine = @fullIntestine + 1
		else # Nuestro mascota esta hambrienta!
			if @sleep
				@sleep = false
				puts '¡Se despierta de repente!'
			end
			puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
		exit # Sale del programa.
		end

		if @fullIntestine >= 10
			@fullIntestine = 0
			puts '¡Uy! ' + @name + ' tuvo un accidente...'
		end

		if hungry?
			if @sleep
				@sleep = false
				puts '¡Se despierta de repente!'
			end
			puts 'El estomago de ' + @name + 'retumba...'
		end

		if needToGo?
			if @sleep
				@sleep = false
				puts 'Se despierta de repente!'
			end
			puts @name + ' hace la danza del baño...'
		end
	end
end

def menu
	puts '1.- Alimentar'
	puts '2.- Hacerlo Dormir'
	puts '3.- Hacerlo Caminar'
	puts '4.- Ir al baño'
end

menu

tamagochi = MyPet.new('Ruffo')

while opcion = gets.chomp
	case opcion
	when '1'
			tamagochi.eat
		menu
	when '2'
			tamagochi.sleep
		menu
	when '3'
			tamagochi.walk
		menu
	when '4'
			tamagochi.wc
		menu
	else 
		puts 'Ingrese opcion valida'
		menu
	end
end