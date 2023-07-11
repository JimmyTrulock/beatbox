require "./lib/beat_box.rb"

describe Beatbox do
    it "creates a class with an empty list" do
        bb = BeatBox.new
        head_check = bb.list.head

        expect(bb).to be_an_instance_of(Beatbox)
        expect(head_check).to eq(nil)
    end
end

describe "#append" do
    it "adds multiple nodes to linkedlist" do
        bb = BeatBox.new
        bb.append("deep doo ditt")


        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node.data).to eq("doo")
    end
end

