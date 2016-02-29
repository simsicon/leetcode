# Sort a linked list in O(n log n) time using constant space complexity.
module Problems
  class SortListProblem
    # @param {ListNode} head
    # @return {ListNode}
    def sort_list(head)
      merge_sort head
    end

    def merge_sort(head)
      left, right = halve(head)

      if left.nil? || right.nil?
        left || right
      else
        merge(merge_sort(left), merge_sort(right))
      end

    end

    def merge(left, right)
      left_cursor, right_cursor = left, right
      head = cursor = ListNode.new nil

      while left_cursor || right_cursor

        if left_cursor.nil? || right_cursor.nil?
          cursor.next = left_cursor || right_cursor
          break
        end

        if left_cursor.val < right_cursor.val
          cursor.next = left_cursor
          left_cursor = left_cursor.next
        else
          cursor.next = right_cursor
          right_cursor = right_cursor.next
        end

        cursor = cursor.next

      end

      head.next

    end

    def halve(head)
      return head if head.nil?

      middle_node = middle(head)
      right = middle_node.next
      middle_node.next = nil
      left = head
      [left, right]
    end

    def middle(head)
      return head if head.nil?

      slow = fast = head

      while fast.next && fast.next.next
        slow = slow.next
        fast = fast.next.next
      end

      slow

    end
  end
end
