

class Node
	include Enumerable
	attr_reader :d
	
	# Create a new Node. First argument is the data for the
	# node, the second is the next node.
	def initialize d, n=nil
		@d = d # Data
		@n = n # Next node
	end
	
	def first
		@d
	end
	
	def rest
		@n
	end
	
	def end?
		@n == nil
	end
	
	def get_end
		@n == nil ? self : @n.get_end
	end
	
	def each &block
		block.call(@d)
		@n.each { |x| block.call x} unless end?
	end
	
	def <=> n
		@d <=> n.d
	end
	
	def add thing
		if end?
			@n = thing.is_a?(self.class) ? thing : self.class.new(thing)
		else
			@n.add thing
		end
	end
	
	def length count=0
		count += 1
		if end?
			count
		else
			@n.length count
		end
	end
	
	def to_a
		ary = []
		ary << @d
		ary << @n.to_a if !end?
		return ary.flatten
	end
end
