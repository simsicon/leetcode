# You are a professional robber planning to rob houses along a street.
# Each house has a certain amount of money stashed,
# the only constraint stopping you from robbing each of them is that
# adjacent houses have security system connected and
# it will automatically contact the police if two adjacent houses were broken into on the same night.
#
# Given a list of non-negative integers representing the amount of money of each house,
# determine the maximum amount of money you can rob tonight without alerting the police.

module Problems
  class HouseRobber
    # @param {Integer[]} nums
    # @return {Integer}
    def rob(nums)
      return 0 unless nums && nums.length > 0

      previous_no_rob = 0
      previous_rob = 0

      nums.each_with_index do |num,i|
        current_no_rob = [previous_no_rob, previous_rob].max
        current_rob = [previous_no_rob + num, previous_rob].max

        previous_no_rob = current_no_rob
        previous_rob = current_rob
      end

      [previous_no_rob, previous_rob].max
    end
  end
end
