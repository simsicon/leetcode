require "minitest/autorun"
require "list_node"
require "test_helper"
require "linked_list_test_helper"
require "problems"

class TestMergeTwoSortedLists < Minitest::Test
  include LinkedListTestHelper

  def setup
    @problem = Problems::MergeTwoSortedListsProblem.new
  end

  def test_merge_two_sorted_lists
    left_input = [1, 4, 5, 8]
    right_input = [2, 3, 7, 9]

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge_two_lists left, right
    assert_equal [1, 2, 3, 4, 5, 7, 8, 9], vals_of(head)

    left_input = [1]
    right_input = [2]

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge_two_lists left, right
    assert_equal [1, 2], vals_of(head)

    left_input = [1, 3]
    right_input = [2]

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge_two_lists left, right
    assert_equal [1, 2, 3], vals_of(head)

    left_input = [2, 3, 4, 7]
    right_input = [6]

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge_two_lists left, right
    assert_equal [2, 3, 4, 6, 7], vals_of(head)

    left_input = []
    right_input = []

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge_two_lists left, right
    assert_equal [], vals_of(head)
  end
end
