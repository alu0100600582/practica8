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
	
	
	
end

if __FILE__ == $0
	m1 = Matriz.new(2,2,[[2,3],[1,3]])
	m2 = Matriz.new(2,2,[[2,4],[3,2]])
	puts m1+m2
end

