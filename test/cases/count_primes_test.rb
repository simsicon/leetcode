require "minitest/autorun"
require "test_helper"
require "problems"

class TestCountPrimes < Minitest::Test
  def setup
    @problem = Problems::CountPrimesProblem.new
  end

  def test_is_prime
    input = [
      [2, true],
      [3, true],
      [5, true],
      [7, true],
      [97, true],
      [1, false],
      [4, false],
      [12, false],
      [15, false],
      [20, false],
      [100, false],
      [1000, false]
    ]

    input.each do |pair|
      assert_equal pair[1], @problem.is_prime(pair[0])
    end
  end

  def test_count_primes
    n = 50
    assert_equal 15, @problem.count_primes(n)

    n = 499979
    assert_equal 41537, @problem.count_primes(n)

    n = 1500000
    assert_equal 114155, @problem.count_primes(n)
  end
end
