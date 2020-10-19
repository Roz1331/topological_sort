require_relative "topological_sort/version"

module TopologicalSort
  attr_accessor :post_order

  def initialize(graph)
    @post_order = []
    @visited = []

    graph.nodes.each do |node|
      dfs(node) unless @visited.include?(node)
    end
  end

  private
  def dfs(node)
    @visited << node
    node.adjacents.each do |adj_node|
      dfs(adj_node) unless @visited.include?(adj_node)
    end

    @post_order << node
  end
end