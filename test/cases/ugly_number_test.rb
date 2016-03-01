require "minitest/autorun"
require "test_helper"
require "problems"

class TestUglyNumber < Minitest::Test
  def setup
    @problem = Problems::UglyNumberProblem.new
  end

  def test_is_ugly
    ugly_numbers = [
      1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 16, 18, 20, 24, 25, 27, 30, 32, 36, 40,
      45, 48, 50, 54, 60, 64, 72, 75, 80, 81, 90, 96, 100, 108, 120, 125, 128,
      135, 144, 150, 160, 162, 180, 192, 200, 216, 225, 240, 243, 250, 256, 270,
      288, 300, 320, 324, 360, 375, 384, 400, 405, 432, 450, 480, 486, 500, 512,
      540, 576, 600, 625, 640, 648, 675, 720, 729, 750, 768, 800, 810, 864, 900,
      960, 972, 1000, 1024, 1080, 1125, 1152, 1200, 1215, 1250, 1280, 1296, 1350,
      1440, 1458, 1500, 1536
    ]

    ugly_numbers.each do |num|
      assert_equal true, @problem.is_ugly(num)
    end

    non_ugly_numbers = [7, 11, 13, 14, 17]

    non_ugly_numbers.each do |num|
      assert_equal false, @problem.is_ugly(num)
    end

  end
end
