# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val, left = nil, right = nil)
    @val = val
    @left, @right = left, right
  end
end

# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
def merge_trees(t1, t2)
  s = Solution.new(t1, t2)
  t = s.merge_trees
  t.nil? ? [] : t
end

# Sol
class Solution
  def initialize(t1, t2)
    @t1 = t1
    @t2 = t2
  end

  def merge_trees(t1 = @t1, t2 = @t2)
    return nil if t1.nil? && t2.nil?

    new_node = create_node(t1, t2)

    left = merge_trees(t1.nil? ? nil : t1.left, t2.nil? ? nil : t2.left)
    right = merge_trees(t1.nil? ? nil : t1.right, t2.nil? ? nil : t2.right)
    init_node_branches(new_node, left, right)
    new_node
  end

  def print_tree(tree)
    return if tree.nil?
    puts tree.val
    print_tree(tree.left)
    print_tree(tree.right)
  end

  def create_node(n1, n2)
    return TreeNode.new(n2.val) if n1.nil?
    return TreeNode.new(n1.val) if n2.nil?
    val = n1.val + n2.val
    TreeNode.new(val)
  end

  def init_node_branches(treenode, left, right)
    treenode.right = right
    treenode.left = left
  end
end

# TESTS
# tree = TreeNode.new(3, TreeNode.new(4,TreeNode.new(5),TreeNode.new(4)), TreeNode.new(5, nil, TreeNode.new(7)))
# tree1 = TreeNode.new(1, TreeNode.new(3,TreeNode.new(5)), TreeNode.new(2))
# tree2 = TreeNode.new(2, TreeNode.new(1,nil,TreeNode.new(4)), TreeNode.new(3, nil, TreeNode.new(7)))
# s = Solution.new(tree1, tree2)
# s.print_tree(tree)
# puts '--------------'
# t3 = s.merge_trees
# s.print_tree(t3)
