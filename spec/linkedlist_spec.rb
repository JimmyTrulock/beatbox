require "./lib/linkedlist.rb"

describe LinkedList do
    it 'creates an empty list' do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
    end

    it 'starts empty' do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end
end

describe "#append" do
    it "adds a node to the beginning of the list" do
        list = LinkedList.new
        list.append("doop")

        expect(list.head.data).to eq("doop")
    end
end

describe "#count" do
    it "counts the nodes in the list" do
        list = LinkedList.new
        list.append("doop")
        count = list.count

        expect(count).to eq (1)
    end
end
