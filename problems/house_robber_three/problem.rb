# The thief has found himself a new place for his thievery again. There is only one entrance to this area, called the "root." Besides the root, each house has one and only one parent house. After a tour, the smart thief realized that "all houses in this place forms a binary tree". It will automatically contact the police if two directly-linked houses were broken into on the same night.
#
# Determine the maximum amount of money the thief can rob tonight without alerting the police.
#
# Example 1:
#      3
#     / \
#    2   3
#     \   \
#      3   1
# Maximum amount of money the thief can rob = 3 + 3 + 1 = 7.
# Example 2:
#      3
#     / \
#    4   5
#   / \   \
#  1   3   1
# Maximum amount of money the thief can rob = 4 + 5 = 9.

module Problems
  class HouseRobberThree


    # @param {TreeNode} root
    # @return {Integer}
    def rob(root)
      max = helper(root)

      # max[0] stands for the sum of current node value and its next next nodes values sum
      # max[1] stands for the maximum sum of other paths
      # every recursive will be the choose of the maximum path
      [max[0], max[1]].max
    end

    def helper(node)
      max = [0, 0]
      return max if node.nil?

      left = helper(node.left)
      right = helper(node.right)

      max[0] = node.val + left[1] + right[1]
      max[1] = [left[0], left[1]].max + [right[0], right[1]].max

      max
    end
  end
end
