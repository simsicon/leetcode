require "minitest/autorun"
require "list_node"
require "test_helper"
require "linked_list_test_helper"
require "problems"

class TestSortList < Minitest::Test
  include LinkedListTestHelper

  def setup
    @problem = Problems::SortListProblem.new
  end

  def test_middle
    input = [5, 4, 3, 2, 1]
    head = linked_list input
    middle_node = @problem.middle head
    assert_equal [3, 2, 1], vals_of(middle_node)

    input = [4, 2, 3, 1]
    head = linked_list input
    middle_node = @problem.middle head
    assert_equal [2, 3, 1], vals_of(middle_node)

    input = [1]
    head = linked_list input
    middle_node = @problem.middle head
    assert_equal [1], vals_of(middle_node)

    input = [2, 1]
    head = linked_list input
    middle_node = @problem.middle head
    assert_equal [2, 1], vals_of(middle_node)

    input = []
    head = linked_list input
    middle_node = @problem.middle head
    assert_equal [], vals_of(middle_node)
  end

  def test_halve
    input = [5, 4, 3, 2, 1]
    head = linked_list input
    left, right = @problem.halve head
    assert_equal [2, 1], vals_of(right)
    assert_equal [5, 4, 3], vals_of(left)

    input = [6, 5, 4, 3, 2, 1]
    head = linked_list input
    left, right = @problem.halve head
    assert_equal [3, 2, 1], vals_of(right)
    assert_equal [6, 5, 4], vals_of(left)

    input = [2, 1]
    head = linked_list input
    left, right = @problem.halve head
    assert_equal [1], vals_of(right)
    assert_equal [2], vals_of(left)

    input = [1]
    head = linked_list input
    left, right = @problem.halve head
    assert_equal [], vals_of(right)
    assert_equal [1], vals_of(left)

    input = []
    head = linked_list input
    left, right = @problem.halve head
    assert_equal [], vals_of(right)
    assert_equal [], vals_of(left)
  end

  def test_merge
    left_input = [1, 4, 5, 8]
    right_input = [2, 3, 7, 9]

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge left, right
    assert_equal [1, 2, 3, 4, 5, 7, 8, 9], vals_of(head)

    left_input = [1]
    right_input = [2]

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge left, right
    assert_equal [1, 2], vals_of(head)

    left_input = [1, 3]
    right_input = [2]

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge left, right
    assert_equal [1, 2, 3], vals_of(head)

    left_input = [2, 3, 4, 7]
    right_input = [6]

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge left, right
    assert_equal [2, 3, 4, 6, 7], vals_of(head)

    left_input = []
    right_input = []

    left, right = linked_list(left_input), linked_list(right_input)
    head = @problem.merge left, right
    assert_equal [], vals_of(head)
  end

  def test_merge_sort
    input = [2, 1, 3, 4, 6, 7, 5]
    head = linked_list input

    output = @problem.merge_sort head
    assert_equal [1, 2, 3, 4, 5, 6, 7], vals_of(output)
  end

  # def test_odd_list
  #   input = [5, 4, 3, 2, 1]
  #   head_odd = linked_list input
  #   result = @problem.sort_list head_odd
  #   assert_equal [1, 2, 3, 4, 5], vals_of(result)
  # end
  #
  # def test_even_list
  #   input = [6, 5, 4, 3, 2, 1]
  #   head = linked_list input
  #   result = @problem.sort_list head
  #   assert_equal [1, 2, 3, 4, 5, 6], vals_of(result)
  # end
  #
  # def test_blank_list
  #   input = []
  #   head = linked_list input
  #   result = @problem.sort_list head
  #   assert_equal [], vals_of(result)
  # end
  #
  # def test_uni_list
  #   input = [1]
  #   head = linked_list input
  #   result = @problem.sort_list head
  #   assert_equal [1], vals_of(result)
  # end
  #
  # def test_big_rand_list
  #   head = rand_linked_list 10000
  #   input = vals_of head
  #   result = @problem.sort_list head
  #   assert_equal input.sort, vals_of(result)
  # end
end
