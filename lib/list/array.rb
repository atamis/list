
class Array
    # Get the first element of the array
    def head
       self[0]
    end

    # Get the rest of the elements of the array, should return array
    def tail
        self[1..-1]
    end

    # Using erlang like pattern matching, return the head and the tail
    #   head, tail = [1, 2, 3].ht
    #   head # =>    1
    #   tail # =>    [2, 3]
    def ht
        return head, tail
    end

    # Convert an array to a list.
    def to_list
        n = Node.new(head)
        n.add tail
        return n
    end
end
