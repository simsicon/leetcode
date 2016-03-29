module BinaryTreeNodeTestHelper

  def binary_tree(values)
    raise "Values must be Array" unless values.is_a? Array
    return nil if values.empty?

    root = TreeNode.new(values.shift)

    append_tree([root], values)
    root
  end

  def append_tree(nodes, values)
    next_nodes = []
    nodes.each do |node|
      next if node.nil?

      node.left = build_node(values.shift)
      node.right = build_node(values.shift)

      next_nodes << node.left
      next_nodes << node.right
    end

    append_tree(next_nodes, values) unless values.empty?
  end

  def leaf?(node)
    node.left.nil? && node.right.nil?
  end

  def to_a(node)
    return [] if node.nil?

    nodes = [node]

    ary = [node.val]
    while !next_level_nodes(nodes).empty?
      ary = ary + next_level_nodes(nodes).map{|e| e.nil? ? nil : e.val }
      nodes = next_level_nodes(nodes)
      break unless nodes.find{|e| e && !leaf?(e) }
    end
    ary
  end

  def next_level_nodes(nodes)
    nodes.map do |e|
      if e
        [e.left, e.right]
      else
        []
      end
    end.flatten
  end

  def print(node)

  end

  def build_node(value)
    return nil if value.nil?
    TreeNode.new(value)
  end

  def depth(node, level)
    return level if node.nil?
    [depth(node.left, level + 1), depth(node.right, level + 1)].max
  end
end
