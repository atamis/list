

class Array
    # Convert an array to a list.
    def to_list
        n = nil
        each do |x|
            if n.nil?
                n = Node.new(x)
            else
                n.add x
            end
        end
        return n
    end
end
