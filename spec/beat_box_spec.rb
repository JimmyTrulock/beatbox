require "./lib/beat_box.rb"

describe Beatbox do
    it "creates a class with an empty list" do
        bb = Beatbox.new
        head_check = bb.list.head

        expect(bb).to be_an_instance_of(Beatbox)
        expect(head_check).to eq(nil)
    end
end
