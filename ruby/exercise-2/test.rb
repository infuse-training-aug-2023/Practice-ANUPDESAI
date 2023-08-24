require 'test/unit'
require_relative 'solution2'


class TestArray <Test::Unit::TestCase
    
    def test_index_at

        assert_equal(element_at([9,5,1,2,3,4,0,-1],2),1,"Element At Assert")
    end

    def test_inclusive_range

        assert_equal(inclusive_range([9,5,1,2,3,4,0,-1],2,4),[1,2,3],"Inclusive Range")
    end

    def test_non_inclusive_range

        assert_equal(non_inclusive_range([9,5,1,2,3,4,0,-1],2,4),[1,2],"Non Inclusive Range")
    end

    def test_start_and_length

        assert_equal(start_and_length([9,5,1,2,3,4,0,-1],3,2),[2,3,4],"Start and length")
    end


end
