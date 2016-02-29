# Sort a linked list using insertion sort.

module Problems
  class InsertionSortListProblem

    # @param {ListNode} head
    # @return {ListNode}
    def insertion_sort_list(head)

      return head if head.nil? || head.next.nil?

      cursor = head.next
      last_node = head

      while cursor
        next_cursor = cursor.next
        target = head
        last_target = nil
        inserted = false

        if last_node.val > cursor.val
          while target
            if target.val > cursor.val
              last_node.next = cursor.next

              if last_target
                last_target.next = cursor
              else
                head = cursor
              end

              cursor.next = target
              target = nil
              inserted = true
            else
              if target.next == cursor
                target = nil
              else
                last_target = target
                target = target.next
              end
            end
          end
        end

        last_node = last_node.next unless inserted
        cursor = next_cursor
      end
      head
    end
  end
end
