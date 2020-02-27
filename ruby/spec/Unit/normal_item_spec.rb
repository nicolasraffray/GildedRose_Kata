require_relative './../../gilded_rose'

describe Normal do 
  let(:item){instance_double("Item", name: "Fruit", sell_in: 6, quality: 3)}
  subject{ Normal.new(item) }
  
  describe "Takes in an item object" do 
    it "inherits from the item class" do 
      expect(subject.item).to eq item
    end 
  end 

  describe "#update_sell_in" do 
    it "reduces sell_in date by 1" do
      allow(subject.item).to receive(:sell_in=).with(5) 
      subject.update_sell_in()
      expect(subject.item).to have_received(:sell_in=).with(5)
    end   
  end

end 