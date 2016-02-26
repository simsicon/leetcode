module LinkedListTestHelper

  def linked_list(vals)
    head = cursor = ListNode.new nil
    vals.map do |val|
      cursor.next = ListNode.new val
      cursor= cursor.next
    end
    head = head.next
    head
  end

  def vals_of(head)
    result = []
    iterate(head){|cursor| result << cursor.val }
    result
  end

  def iterate(head, &block)
    cursor = head
    while cursor
      yield cursor
      cursor = cursor.next
    end
    head
  end

  def rand_linked_list(length=5)
    vals = length.times.map{rand(10000)}
    linked_list vals
  end

  def pl(head)
    cursor = head
    while cursor
      puts cursor.val
      cursor = cursor.next
    end
  end

  def delete_node(head, node)
    cursor = head
    _last_node = nil

    while cursor
      if cursor == node
        if _last_node
          _last_node.next = cursor.next
        else
          head = cursor.next
        end
        cursor = nil
      else
        _last_node = cursor
        cursor = cursor.next
      end
    end

    head
  end

end
