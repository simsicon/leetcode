require "minitest/autorun"
require "test_helper"
require "problems"

class TestHappyNumber < Minitest::Test
  def setup
    @problem = Problems::HappyNumberProblem.new
  end

  def test_digits
    n = 123456
    assert_equal [1, 2, 3, 4, 5, 6], @problem.digits(n)
  end

  def test_is_happy
    n = 1
    assert_equal true, @problem.is_happy(n)

    n = 19
    assert_equal true, @problem.is_happy(n)

    n = 20
    assert_equal false, @problem.is_happy(n)
  end
end
