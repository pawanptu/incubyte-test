# testing library
require 'minitest/autorun'
require_relative '../string_calculator'

class StringCalculatorTest < Minitest::Test
    def test_empty_string
        assert_equal 0 , StringCalculator.add("")
    end

    def test_single_number
        assert_equal 1, StringCalculator.add("1")
        assert_equal 5, StringCalculator.add("5")
    end  
    
    def test_two_numbers
        assert_equal 3, StringCalculator.add("1,2")
        assert_equal 8, StringCalculator.add("3,5")
    end

    def test_multiple_numbers
        assert_equal 6, StringCalculator.add("1,2,3")
        assert_equal 10, StringCalculator.add("2,3,5")
    end   
    
    def test_new_lines_between_numbers
        assert_equal 6, StringCalculator.add("1\n2,3")
        assert_equal 10, StringCalculator.add("2,3\n5")
    end   
end
