require_relative './../../gilded_rose'

describe Brie do 
  let(:item){ double(name: 'Aged Brie', sell_in: int, quality: 3)}
  subject{ Brie.new(item) }

  describe "Takes in an item object" do 
    let(:int){2}
    it "inherits from the item class" do 
      expect(subject.item).to eq item
    end 
  end 

  describe "#update_sell_in" do 
    let(:int){2}
    it "increases sell in" do 
      allow(subject.item).to receive(:sell_in=).with(1)
      subject.update_sell_in()
      expect(subject.item).to have_received(:sell_in=).with(1)
    end 
  end 
end 