require 'list/array'

class Node
	include Enumerable, Comparable
	attr_reader :d
	
	# Create a new Node. First argument is the data for the
	# node, the second is the next node.
	def initialize d, n=nil
		@d = d # Data
		@n = n # Next node
	end
    
    # In the grand scheme of things, get the head of this list.
    # For this node, give us your data.
    def first
        @d
    end
    
    # In the grand scheme of things, give the rest of the list, as opposed to the head of the list.
    # For this node, give us the next node.
    def rest
        @n
    end
    
    # Is this the end of the list?
    # For reference, it is the end of the list if the next node is nil.
    def at_end?
        @n.is_a? NilClass # We use this because Node overrides ==, and things get screwed up.
    end

    
    # This is a recursive function that goes through the list until we get to the last node, where it returns itself.
    def get_end
        at_end? ? self : @n.get_end
    end
    
    # Iterates through the items in the list, starting from this one, and going until we get to the end.
    def each &block
        block.call(@d)
        @n.each(&block)unless at_end?
    end
    
    # Used for the Comparable module.
    def <=> x
        @d <=> x.d
    end
    
    # Adds something to the end of the list. This now accepts arrays.
    def add thing
        if at_end?
            if thing.is_a? Array
                h, t = thing.ht
                add h
                @n.add t unless t.empty?
            else
                @n = thing.is_a?(self.class) ? thing : self.class.new(thing)
            end
        else
            @n.add thing
        end
    end
    
    # Gets the length of the list
    def length count=0
        count += 1
        if at_end?
            count
        else
            @n.length count
        end
    end
    
    # Converts the list to an array.
    def to_a
        ary = []
        ary << @d 
        ary << @n.to_a unless at_end?
        return ary.flatten
    end

    def [](x)
        if x == 0
            @d
        else
            @n[x-1]
        end
    end

#    def to_s(x="(")
#        if at_end?
#            x += ')'
#        else
#            x += (@d.to_s + ", ")
#            x += @n.to_s x
#        end
#        return x
#    end
end
