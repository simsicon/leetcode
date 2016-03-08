#Count the number of prime numbers less than a non-negative number, n.

module Problems
  class CountPrimesProblem

    # @param {Integer} n
    # @return {Integer}
    def count_primes(n)
      return 0 if n <= 1

      all = Array.new(n, false)
      all[0] = 1
      all[1] = 1
      count = 0

      i = 2

      while i * i < n

        j = i

        if all[i]
          i = i + 1
          next
        end

        while i * j < n
          unless all[i * j]
            all[i * j] = true
            count = count + 1
          end
          j = j + 1
        end

        i = i + 1

      end

      all.count - count - 2

    end

    def count_primes_slow(n)
      all_numbers = (1..(n-1)).to_a

      primes_count = 0

      while all_numbers.count > 0
        cursor = all_numbers.shift
        puts "call is_prime #{cursor}, all_numbers count: #{all_numbers.count}"
        if is_prime(cursor)
          primes_count = primes_count + 1
          all_numbers = all_numbers - (2..(n/cursor)).to_a.map{|e| e * cursor }
        end
      end
      primes_count
    end

    def is_prime(n)
      return false if n <= 1

      i = 2

      while i * i <= n
        return false if n % i == 0
        i = i + 1
      end

      true
    end
  end
end
