class Morseable

	def initialize(number)
		@number = number
	end

	#Esto es una aberración y debe ser refactorizado!
	def generate_hash(number)

		numeros = {0 => '-----', 1 =>  '.----', 2 => '..---', 3 => '...--', 4 => '....-', 5 => '.....', 6 => '-....', 7 => '--...', 8 => '---..', 9 => '----.'}
		numeros[number]

	end

	def to_morse
		self.generate_hash(@number)
	end
end

m = Morseable.new(9)
puts m.to_morse


