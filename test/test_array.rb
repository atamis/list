require "test/unit"
require "list/array"
require "list/node"

class TestArray < Test::Unit::TestCase
	def test_basic
		n = [:one, :two, :three].to_list
		assert_equal(:one, n.d)
		assert_equal(:two, n.rest.d)
		assert_equal(:three, n.rest.rest.d)
		assert_equal(:three, n.get_end.d)
	end
    
    def test_head_tail
        a = [1, 2, 3]
        assert_equal(1, a.head)
        assert_equal([2, 3], a.tail)
        assert_nothing_raised(Exception) { h, t = a.ht  }
    end
end
