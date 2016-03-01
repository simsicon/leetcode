# Write an algorithm to determine if a number is "happy".

# A happy number is a number defined by the following process:
# Starting with any positive integer, replace the number by the sum of the
# squares of its digits, and repeat the process until the number equals 1
# (where it will stay), or it loops endlessly in a cycle which does not include 1.
# Those numbers for which this process ends in 1 are happy numbers.


module Problems
  class HappyNumberProblem

    # @param {Integer} n
    # @return {Boolean}
    def is_happy(n)
      @seen = []
      digits_sqr_sum n
    end

    def digits_sqr_sum(number)
      sum = digits(number).map{|e| e**2 }.reduce(:+)

      return true if sum == 1

      if @seen.include? sum
        return false
      else
        @seen << sum
      end

      digits_sqr_sum(sum)
    end

    def digits(n)
      _digits = []
      while n > 0
        _digits.unshift n % 10
        n = n / 10
      end
      _digits
    end

  end
end
