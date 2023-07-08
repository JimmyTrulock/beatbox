require "./lib/node.rb"

class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end
    
    def is_empty?
        if @head == nil
            return true
        else
            return false
        end
    end  

    def append(data)
        if self.is_empty?
            @head = Node.new(data)
        else
            curr_head = Node.new(data)
            curr_head.next = @head
            @head = curr_head
        end
    end

    def count
        if self.is_empty?
            count = 0
        else
            count = 1
            current_node = @head
            while current_node.next != nil
                current_node = current_node.next
                count += 1
            end
        end
        count
    end
end