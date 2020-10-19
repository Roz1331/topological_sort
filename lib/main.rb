require_relative "graph"
require_relative "node"
require_relative "TopologicalSortClass"

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

p TopologicalSortClass.new(graph).post_order.map(&:to_s)

# TODO
# add some tests in /test/topological_sort_test.rb
