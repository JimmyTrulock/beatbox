require "./lib/linked_list"

class Beatbox
    attr_accessor :head, :next_node, :data, :list

    def initialize
        @list = LinkedList.new
    end
end


