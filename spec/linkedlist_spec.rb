require "./lib/linkedlist.rb"

describe LinkedList do
    it 'creates an empty list' do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
    end
end