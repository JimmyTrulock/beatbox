require "./lib/node.rb"
require "./lib/linked_list.rb"


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
        list.append("deep")
        count = list.count

        expect(count).to eq (2)
    end
end

describe "#to_string" do
    it "converst nodes into a string" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        string_list = list.to_string

        expect(string_list).to eq("doop"", ""deep")
    end
end

describe "#prepend" do
    it "adds a node to the front of the list" do
        list = LinkedList.new
        list.append("doop")
        list.prepend("deep")
        string_list = list.to_string

        expect(string_list).to eq("deep"", ""doop")
    end
end

describe "#insert" do
    it "inserts a node at a givin position" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        list.insert(1, "woo")
        string_list = list.to_string

        expect(string_list).to eq("doop"", ""woo"", ""deep")
    end
end
