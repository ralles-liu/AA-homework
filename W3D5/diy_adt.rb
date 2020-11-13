class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        return stack.pop
    end

    def peek
        return stack[-1]
    end

end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        to_add = [key, value]
        @map << to_add
    end

    def get(key)
        @map.select {|pair| pair[0] == key}
    end

    def delete(key)
        @map.each_with_index do |pair, i|
            if pair[0] == key
                Array.delete_at(i)
            end
        end
    end

    def show
        p @map
    end
    

end


