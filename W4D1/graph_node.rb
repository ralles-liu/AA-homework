require "set"
class GraphNode
    attr_accessor :value, :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end


end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]


def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()
    while queue
        curr_node = queue.shift
        if curr_node.value = target_value
            return curr_node
        end
        visited.add(curr_node)
        curr_node.neighbors.each do |next_node|
            if !visited.include?(next_node)
                queue.push(next_node)
            end
        end
    end
    return nil
end

test = bfs(a, "b")
puts test.value

test2 = bfs(a, "f")
puts test2.value