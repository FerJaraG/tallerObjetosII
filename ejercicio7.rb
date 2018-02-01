class Punto
	def initialize(x,y)
		@x = x
		@y = y
	end

	def x
		@x
	end

	def y
		@y
	end
end

10.times do
	punto = Punto.new(rand(1..100),rand(1..100))
	puts "#{punto.x} y #{punto.y}"
end