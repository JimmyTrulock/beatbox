# class Entry
#     attr_accessor :next, :data
#     def initialize(data)
#         @next = nil
#         @data = data
#     end
# end

# class list
#     attr_accessor :name
#     def initialize
#         @head = nil
#         @tail = nil
#     end
# end

# cell = struct.new(:value, :next)
# list = cell.new("head", nil)


class Node
    attr_reader :data, :next

    def initialize(data)
        @data = data
        @next = nil
    end
end

