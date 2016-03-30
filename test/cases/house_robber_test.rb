require "minitest/autorun"
require "test_helper"
require "problems"

class TestHouseRobber < Minitest::Test

  def setup
    @problem = Problems::HouseRobber.new
  end

  def test_rob
    nums = [
      24, 22, 57, 29, 89, 77, 51, 43, 22, 6, 89, 29, 8, 98, 43, 65, 3, 54, 28,
      16, 47, 10, 2, 24, 23, 11, 11, 78, 29, 12, 36, 63, 25, 85, 64, 60, 75, 94,
      13, 20, 86, 85, 29, 14, 54, 39, 21, 33, 9, 75, 92, 28, 29, 80, 84, 87, 0,
      19, 28, 50, 20, 65, 87, 0, 84, 32, 80, 29, 98, 51, 3, 27, 20, 25, 26, 57,
      4, 59, 63, 68, 0, 20, 97, 58, 51, 91, 38, 12, 10, 30, 35, 1, 93, 97, 17,
      58, 51, 90, 16, 71
    ]

    assert_equal 2700, @problem.rob(nums)
  end


end
