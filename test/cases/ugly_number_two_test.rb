require "minitest/autorun"
require "list_node"
require "test_helper"
require "linked_list_test_helper"
require "problems"

class TestUglyNumberTwo < Minitest::Test
  def setup
    @problem = Problems::UglyNumberTwoProblem.new
  end

  def test_nth_ugly_number
    ugly_numbers = [1, 2, 3, 4, 5, 6, 8, 9, 10, 12]

    ugly_numbers.each_with_index do |num, index|
      assert_equal num, @problem.nth_ugly_number(index + 1)
    end

  end
end
