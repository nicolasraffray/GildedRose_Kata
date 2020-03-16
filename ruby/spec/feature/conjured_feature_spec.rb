require_relative './../../lib/gilded_rose'

describe 'Conjured Item' do 
  item = [Item.new(name = 'Conjured', sell_in = 4, quality = 10)]
  subject { GildedRose.new(item) }

  describe 'within sell_in quality decrease' do 
    it 'degrades by 2 as sell in date approaches' do 
      expect{ subject.update_quality }.to change { subject.items[0].quality }.by(-2) 
    end 
  end 

  describe 'out of sell_in date quality decrease' do 
    it 'degrades by 4 after sell in date has passed' do 
      i = 0 
      while i < 2
        subject.update_quality 
        i += 1 
      end 
      expect{ subject.update_quality }.to change { subject.items[0].quality}.by(-4)
    end 

    it 'cannot have a quality that drops below zero' do 
      expect { subject.update_quality }.not_to change { subject.items[0].quality }
    end 
  end 

  describe 'the sell_in days falls as update quality is called' do 
    it 'has a sell_in date that falls overtime' do 
      expect { subject.update_quality }.to change { subject.items[0].sell_in }.by(-1)
    end 
  end 
end 