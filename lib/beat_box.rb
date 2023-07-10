require "./lib/linked_list"

class Beat_box
    attr_accessor :head, :next_node, :data, :list

    def initialize
        @list = LinkedList.new
    end

    