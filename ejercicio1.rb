class Anything
	attr_reader :a
	def initialize(a)
		@a = a
	end

	def foo
		a = 5
	end
	def bar
		@a += 1
	end
end

any = Anything.new(10)
puts any.foo
puts any.bar
puts any.a