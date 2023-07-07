require "./lib/node.rb"

describe Node do
    it 'creates new node' do
        node_1 = Node.new("Jimmy")
        
        expect(node_1).to be_an_instance_of(Node)
    end

    it "changes data" do
        node_1 = Node.new("Jimmy")

        node_1.append("Andrea")

        expect(node_1.data).to eq ("Andrea")
    end

end



