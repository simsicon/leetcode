# Write a program to find the n-th ugly number.

# Ugly numbers are positive numbers whose prime factors only include 2, 3, 5.
# For example, 1, 2, 3, 4, 5, 6, 8, 9, 10, 12 is the sequence of the first 10 ugly numbers.
module Problems
  class UglyNumberTwoProblem

    # @param {Integer} n
    # @return {Integer}
    def nth_ugly_number(n)
      ugly_numbers = [1]
      i, j, k = 0, 0, 0
      while ugly_numbers.length < n

        m = [ugly_numbers[i] * 2, ugly_numbers[j] * 3, ugly_numbers[k] * 5].min

        i = i + 1 if m == ugly_numbers[i] * 2
        j = j + 1 if m == ugly_numbers[j] * 3
        k = k + 1 if m == ugly_numbers[k] * 5

        ugly_numbers << m

      end

      ugly_numbers.last
    end
  end
end
