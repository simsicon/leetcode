# Sort a linked list using insertion sort.

module Problems
  class InsertionSortListProblem

    # @param {ListNode} head
    # @return {ListNode}
    def insertion_sort_list(head)

      return head if head.nil? || head.next.nil?

      _cursor = head.next
      _last_node = head

      while _cursor
        _next_cursor = _cursor.next
        _target = head
        _last_target = nil
        _inserted = false

        if _last_node.val > _cursor.val
          while _target
            if _target.val > _cursor.val
              _last_node.next = _cursor.next

              if _last_target
                _last_target.next = _cursor
              else
                head = _cursor
              end

              _cursor.next = _target
              _target = nil
              _inserted = true
            else
              if _target.next == _cursor
                _target = nil
              else
                _last_target = _target
                _target = _target.next
              end
            end
          end
        end

        _last_node = _last_node.next unless _inserted
        _cursor = _next_cursor
      end
      head
    end
  end
end
