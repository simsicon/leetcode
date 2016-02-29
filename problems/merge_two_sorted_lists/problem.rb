# Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

# Sort a linked list in O(n log n) time using constant space complexity.
module Problems
  class MergeTwoSortedListsProblem

    # @param {ListNode} l1
    # @param {ListNode} l2
    # @return {ListNode}
    def merge_two_lists(l1, l2)
      cursor1 = l1
      cursor2 = l2

      head = cursor = ListNode.new nil

      while cursor1 || cursor2

        if cursor1.nil? || cursor2.nil?
          cursor.next = cursor1 || cursor2
          break
        end

        if cursor1.val < cursor2.val
          cursor.next = cursor1
          cursor1 = cursor1.next
        else
          cursor.next = cursor2
          cursor2 = cursor2.next
        end

        cursor = cursor.next
      end

      head.next
    end

  end
end
