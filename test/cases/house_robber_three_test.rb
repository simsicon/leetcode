require "minitest/autorun"
require "binary_tree_node"
require "test_helper"
require "binary_tree_node_test_helper"
require "problems"

class TestHouseRobberThree < Minitest::Test
  include BinaryTreeNodeTestHelper

  def setup
    @problem = Problems::HouseRobberThree.new
  end

  def test_binary_tree_node_helper
    values = [5, 4, 7, 3, nil, 2, nil, -1, nil, 9]
    root = binary_tree(values)
    assert_equal 4, depth(root, 0)

    assert_equal [5, 4, 7, 3, nil, 2, nil, -1, nil, 9, nil], to_a(root)
  end

  def test_rob
    values = [5, 4, 7, 3, nil, 2, nil, 1, nil, 9]
    root = binary_tree(values)

    assert_equal 21, @problem.rob(root)
  end


end
