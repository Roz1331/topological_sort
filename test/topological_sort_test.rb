require "test_helper"
require_relative "../lib/graph"
require_relative "../lib/node"
require_relative "../lib/TopologicalSortClass"

class TopologicalSortTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TopologicalSort::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_topological_sort_1
    graph = Graph.new
    graph.nodes << (node1 = Node.new(1))
    graph.nodes << (node2 = Node.new(2))
    graph.nodes << (node3 = Node.new(3))
    graph.nodes << (node4 = Node.new(4))
    graph.nodes << (node5 = Node.new(5))
    graph.add_edge(node1, node2)
    graph.add_edge(node1, node5)
    graph.add_edge(node2, node3)
    graph.add_edge(node2, node4)
    res = [Node.new(3), Node.new(4), Node.new(2), Node.new(5), Node.new(1)]
    assert TopologicalSortClass.new(graph).post_order.map(&:to_s) == res.map(&:to_s)
  end
end
