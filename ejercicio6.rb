class Student
	attr_accessor :name, :nota #Agregar un getter para la nota.
	def initialize(name,mark)
		@name = name
		@nota = mark
	end
end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

#Iterar los nombres para crear un nuevo arreglo de objetos de Student.
# nuevo_arreglo = []

# nombres.each do |nombre|
# 	nuevo_arreglo.push(Student.new(nombre))
# end


#Modificar el objeto para que pueda recibir una nota del alumno.
# nuevo_arreglo = []
# notas = [1,2,3,4,5,6,7]

# nombres.each do |nombre|
# 	nuevo_arreglo.push(Student.new(nombre, notas.sample))
# end


#Modificar la iteración para asignar notas incrementales de 1 en adelante.

nuevo_arreglo = []
nota = 0
nombres.each do |nombre|
	nota +=1
	nuevo_arreglo.push(Student.new(nombre, nota))
end

# nuevo_arreglo.each do |alumno|
# 	puts "la nota de #{alumno.name} es #{alumno.nota}"
# end

#Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.

nuevo_arreglo.map { |e| puts "#{e.name} tiene una nota de #{e.nota}" } 


