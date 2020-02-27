require_relative './../../gilded_rose'

describe Normal do 
  let(:item){double(name: "Fruit", sell_in: 6, quality: 3)}
  subject{ Normal.new(item) }
  
  describe "Takes in an item object" do 
    it "inherits from the item class" do 
      expect(subject.item).to eq item
    end 
  end 

 

end 