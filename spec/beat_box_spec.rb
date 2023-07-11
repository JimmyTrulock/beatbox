require "./lib/beat_box.rb"

describe BeatBox do
    it "creates a class with an empty list" do
        bb = BeatBox.new
        head_check = bb.list.head

        expect(bb).to be_an_instance_of(BeatBox)
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

describe "#count" do
    it "counts the nodes in the list" do
        bb = BeatBox.new
        bb.append("doop deep womp")
        count = bb.count

        expect(bb.list.head.data).to eq("doop")
        expect(count).to eq (3)
    end
end

describe "#play" do
    it "plays the beats in the list" do
        bb = BeatBox.new
        bb.append("doop deep womp")
        say = bb.play

        expect(say).to eq(`say -r 50 -v Boing doop deep womp`)
    end
end
