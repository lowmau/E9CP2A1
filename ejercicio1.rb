=begin
El archivo casino.txt contiene las recaudaciones de 4 días de un casino separadas por
mesa de juego.
Mesa 1, 90, 60, 10, 30
Mesa 2, 40, 34, 77, 11
Mesa 3, 34, 86, 55, 91
Mesa 4, 67, 93, 43, 87
Se pide:
-Crear una clase Table cuyo constructor reciba el nombre de la mesa y las
recaudaciones correspondientes de cada día.
-Crear un método que permita leer el archivo e instanciar una mesa por línea del
archivo.
Crear métodos que permitan:
Conocer el mayor valor recaudado, y a que mesa y día corresponde.
Calcular el promedio total de lo recaudado por todas las mesas en todos los días.
=end

class Table
	attr_reader :name, :recaudations
	def initialize(name, *recaudations)
		@name = name
		@recaudations = recaudations.map(&:to_i)
	end
end

def valor_recaudado
	valor = []
	data = []
	File.open('casino.txt', 'r') { |file| data = file.readlines}

	data.each do |v|
 		ls = v.split(', ')
 		valor << Table.new(*ls)
	end
	p valor

	def promedio
		
	end
end

valor_recaudado
promedio