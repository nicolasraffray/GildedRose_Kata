require_relative './../../gilded_rose'

describe 'Brie testing' do 

  item = [Item.new("Aged Brie", 10, 0)]
  subject { GildedRose.new(item)}
  
  it 'increases in value as the days pass to sell by' do 
    subject.update_quality()
    expect(subject.items[0].sell_in).to eq(9)
    expect(subject.items[0].quality).to eq(1)
  end 

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