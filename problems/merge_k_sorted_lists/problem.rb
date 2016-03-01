# Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.
module Problems
  class MergeKSortedListsProblem

    # @param {ListNode[]} lists
    # @return {ListNode}
    def merge_k_lists(lists)

      return lists if lists.nil? || lists.length < 1

      return lists.last if lists.length == 1

      if lists.length == 2
        merge_two_lists(lists[0], lists[1])
      else
        left_lists, right_lists = halve(lists)

        merge_two_lists(merge_k_lists(left_lists), merge_k_lists(right_lists))
      end
    end
    def merge_two_lists(l1, l2)
      head = cursor = ListNode.new nil

      cursor1 = l1
      cursor2 = l2

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

    def halve(lists)
      [lists[0, lists.length/2], lists[lists.length/2, lists.length - lists.length/2]]
    end
  end
end
