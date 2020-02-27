require_relative './../../gilded_rose'

describe Normal do 
  
  describe "Takes in an item object" do 
    it "inherits from the item class" do 
      item = double(name: "Fruit", sell_in: 6, quality: 3)
      normal_good =  Normal.new(item)
      expect(normal_good.item).to eq item
    end 
  end 

  describe "#update_sell_in" do 
    it "reduces sell_in date by 1" do 
      
    end 
  end 

end 