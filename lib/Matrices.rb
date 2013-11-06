#! /usr/bin/ruby


class Matriz
	

	attr_reader :nfil, :ncol, :pos
	
	
	def initialize(nfil, ncol, pos)
		@nfil = nfil
		@ncol = ncol
		@pos = Array.new(pos)
	end
	
	
	def filas
		@nfil
	end
	
	
	def colum
		@ncol
	end
	
	#convertir la matriz a string
	def to_s
		aux = ""
		@nfil.times do |i|
			@ncol.times do |j|
				aux << "#{pos[i][j]}\t"
			end
			aux << "\n"
		end
		aux
	end
	
	# sumar dos matrices
	def +(other)
		if ((@nfil != other.nfil) || (@ncol != other.ncol))
			puts "No se pueden sumar las matrices"
		else
			elemento = Array.new(0)
			for i in 0...filas do
				fila = Array.new(0)
				for j in 0...colum do
					fila << pos[i][j] + other.pos[i][j]
				end
				elemento << fila
			end
		end
		Matriz.new(@nfil, @ncol, elemento)
	end
	
	#restar dos matrices
	def -(other)
		if ((@nfil != other.nfil) || (@ncol != other.ncol))
			puts "No se pueden restar las matrices"
		else
			elemento = Array.new(0)
			for i in 0...filas do
				fila = Array.new(0)
				for j in 0...colum do
					fila << pos[i][j] - other.pos[i][j]
				end
				elemento << fila
			end
		end
		Matriz.new(@nfil, @ncol, elemento)
	end
	
end

if __FILE__ == $0
	m1 = Matriz.new(2,2,[[2,3],[1,3]])
	m2 = Matriz.new(2,2,[[2,4],[3,2]])
	puts m1+m2
end

