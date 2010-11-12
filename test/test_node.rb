require "test/unit"
require "list/node"

class TestNode < Test::Unit::TestCase
  def setup
		@n2 = Node.new(:second)
		@n = Node.new(:first, @n2)
  end
  
  def test_creation
		Node.new(:first, Node.new(:second, nil))
		Node.new(:another)
  end
  
  def test_data
		assert_equal :first, @n.d
		assert_equal @n.d, @n.first
  end
  
  def test_end
		assert_equal @n.end?, false
		assert @n.rest.end?
  end
  
  def test_get_end
		assert_equal @n2, @n.get_end
  end
  
  def test_each
		ary = []
		@n.each { |x| ary << x }
		assert_equal [:first, :second], ary
  end
  
  def test_add
		@n.add :third
		assert_equal :third, @n.get_end.d
		assert_equal 3, @n.length
	
		@n.add Node.new(:fourth)
		assert_equal :fourth, @n.get_end.d
		assert_equal 4, @n.length
        
        x = Node.new(1)
        x.add([2, 3, 4])
        assert_equal(1, x.d)
        assert_equal(4, x.get_end.d)
  end
  
  def test_length
		assert_equal 1, Node.new(nil).length
		assert_equal 2, @n.length
  end

	def test_to_array
		assert_equal([:first, :second], @n.to_a)
	end
end
