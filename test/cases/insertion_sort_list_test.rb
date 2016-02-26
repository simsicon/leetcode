require "minitest/autorun"
require "list_node"
require "test_helper"
require "linked_list_test_helper"
require "problems"

class TestInsertionSortList < Minitest::Test
  include LinkedListTestHelper

  def setup
    @problem = Problems::InsertionSortListProblem.new
  end

  def test_odd_list
    input = [5, 4, 3, 2, 1]
    head_odd = linked_list input
    result = @problem.insertion_sort_list head_odd
    assert_equal [1, 2, 3, 4, 5], vals_of(result)
  end

  def test_even_list
    input = [6, 5, 4, 3, 2, 1]
    head = linked_list input
    result = @problem.insertion_sort_list head
    assert_equal [1, 2, 3, 4, 5, 6], vals_of(result)
  end

  def test_blank_list
    input = []
    head = linked_list input
    result = @problem.insertion_sort_list head
    assert_equal [], vals_of(result)
  end

  def test_uni_list
    input = [1]
    head = linked_list input
    result = @problem.insertion_sort_list head
    assert_equal [1], vals_of(result)
  end

  def test_big_rand_list
    head = rand_linked_list 10000
    input = vals_of head
    result = @problem.insertion_sort_list head
    assert_equal input.sort, vals_of(result)
  end
end
