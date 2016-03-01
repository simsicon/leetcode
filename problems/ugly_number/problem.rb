# Write a program to check whether a given number is an ugly number.
# Ugly numbers are positive numbers whose prime factors only include 2, 3, 5.
# For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
# Note that 1 is typically treated as an ugly number.

module Problems
  class UglyNumberProblem

    # @param {Integer} num
    # @return {Boolean}
    def is_ugly(num)
      dup = num
      factors = [1, 2, 3, 5]

      while !factors.include?(dup)

        tmp = dup
        dup = dup / 2 if dup % 2 == 0
        dup = dup / 3 if dup % 3 == 0
        dup = dup / 5 if dup % 5 == 0

        return false if tmp == dup
      end

      true

    end
  end
end
