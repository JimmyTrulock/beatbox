require "./lib/node.rb"

class LinkedList
    attr_accessor :head, :next_node, :data

    def initialize
        @head = nil
    end
    
    def is_empty?
        if @head == nil
             true
        else
             false
        end
    end  

    def append(data)
        if self.is_empty?
            @head = Node.new(data)
        else
            current_node = @head
            new_node = Node.new(data)
            while current_node.next_node != nil
                currennt_node = current_nod.next_node
            end
            current_node.next_node = new_node
        end
    end

    def count
        if self.is_empty?
            count = 0
        else
            count = 1
            current_node = @head
            while current_node.next_node != nil
                current_node = current_node.next_node
                count += 1
            end
        end
        count
    end

    def to_string
        node_list = []
        if self.is_empty?
            "Empty"
        else
            current_node = @head
            while current_node.next_node != nil
                node_list << current_node.data
                current_node = current_node.next_node
            end
            node_list << current_node.data
        end
        node_list.join(", ")
    end
    
    def prepend(data)
        if self.is_empty?
            @head = Node.new(data)
        else
            curr_head = Node.new(data)
            curr_head.next_node = @head
            @head = curr_head
        end
    end

    def insert(index, data)
        current_node = @head
            index.times do

            new_node = Node.new(data)
            new_node.next_node = current_node.next_node
            current_node.next_node = new_node
        end
    end
end
