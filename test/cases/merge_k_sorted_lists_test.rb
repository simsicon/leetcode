require "minitest/autorun"
require "list_node"
require "test_helper"
require "linked_list_test_helper"
require "problems"

class TestMergeKSortedLists < Minitest::Test
  include LinkedListTestHelper

  def setup
    @problem = Problems::MergeKSortedListsProblem.new
  end

  def test_halve_array
    lists = [1, 2, 3, 4, 5, 6]
    left, right = @problem.halve lists
    assert_equal [1, 2, 3], left
    assert_equal [4, 5, 6], right

    lists = [1, 2, 3, 4, 5]
    left, right = @problem.halve lists
    assert_equal [1, 2], left
    assert_equal [3, 4, 5], right
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

  def test_merge_k_lists
    # inputs = [
    #   [2, 4, 5, 9, 11],
    #   [1, 3, 8, 9, 10],
    #   [3, 4, 6, 8, 10, 12, 14],
    #   [1, 1, 2, 4, 9, 10, 11]
    # ]
    #
    # lists = inputs.map{|e| linked_list(e) }
    # head = @problem.merge_k_lists(lists)
    # assert_equal [1, 1, 1, 2, 2, 3, 3, 4, 4, 4, 5, 6, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 12, 14], vals_of(head)
    #
    # inputs = [
    #   [],
    #   [1, 1, 1],
    #   [2, 2, 2],
    #   [3, 3, 3]
    # ]
    #
    # lists = inputs.map{|e| linked_list(e) }
    # head = @problem.merge_k_lists(lists)
    # assert_equal [1, 1, 1, 2, 2, 2, 3, 3, 3], vals_of(head)

    inputs = [
      [2],
      [],
      [-1]
    ]

    lists = inputs.map{|e| linked_list(e) }
    head = @problem.merge_k_lists(lists)
    assert_equal [-1, 2], vals_of(head)
  end


end
