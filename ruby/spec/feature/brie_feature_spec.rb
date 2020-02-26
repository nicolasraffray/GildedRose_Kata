require_relative './../../gilded_rose'

describe 'Brie testing' do 

  
  item = [Item.new("Aged Brie", 10, 0)]
  subject { GildedRose.new(item)}
  
  describe 'changes' do 
    it 'increases in value as the days pass to sell by' do 
      subject.update_quality()
      expect(subject.items[0].sell_in).to eq(9)
      expect(subject.items[0].quality).to eq(1)
    end 

    it 'increases by 2 after sell_in date' do 
      i = 0 
      while i < 10 do 
        subject.update_quality()
        i += 1
      end 
      expect{subject.update_quality()}.to change{subject.items[0].quality}.by(2)
    end
  end 

  describe 'capping at 50' do 
    it 'the quality never goes above 50' do
      i = 0  
      while i < 29 do 
        subject.update_quality()
        i += 1
      end
      subject.update_quality()
      expect(subject.items[0].quality).to eq(50)
    end 
  end  
end 