require_relative './../../gilded_rose'

describe 'Any noraml product' do 
  
  item = [Item.new("Fruit", 3, 7)]
  subject { GildedRose.new(item) }

  describe "Degrading" do 
    it "quality degrades by one as sell_in date aproaches" do 
      expect{subject.update_quality()}.to change{subject.items[0].quality}.by(-1)
    end

    it "degrades the quality by twice as much once sell_in date has passed" do 
      i = 0 
      while i < 3
        subject.update_quality()
        i += 1
      end
      expect{subject.update_quality()}.to change{subject.items[0].quality}.by(-2)
    end 

    it "cannot have a quality that drops below zero" do 
      expect{subject.update_quality()}.not_to change{subject.items[0].quality}
    end 
  end

  describe "Sell_in dropping" do 
    it "the sell in date value falls as time goes by" do
      expect{subject.update_quality()}.to change{subject.items[0].sell_in}.by(-1)
    end 
  end 
end 