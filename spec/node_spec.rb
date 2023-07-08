require "./lib/node.rb"

describe Node do
    it 'creates new node' do
        node_1 = Node.new("doop")
        
        expect(node_1).to be_an_instance_of(Node)
    end
end



