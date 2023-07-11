require './lib/linked_list.rb'

class BeatBox
    attr_accessor :head, :next_node, :data, :list

    def initialize
        @list = LinkedList.new
    end

    def is_empty?
        if @head == nil
             true
        else
             false
        end
    end  

    def append(data)
        bucket = data.split
        
        if self.is_empty?
            list.head = Node.new(bucket.shift)
            current_node = list.head

            while bucket != []
                current_node.next_node = Node.new(bucket.shift)
                current_node = current_node.next_node
                end       
        else
            new_node = Node.new(data)
            while current_node.next_node != nil
                current_node = current_node.next_node
            end
            current_node.next_node = new_node
        end

    end

    def count
        if self.list.is_empty?
            count = 0
        else
            count = 1
            current_node = list.head
            while current_node.next_node != nil
                current_node = current_node.next_node
                count += 1
            end
        end
    
        count
    end

end


