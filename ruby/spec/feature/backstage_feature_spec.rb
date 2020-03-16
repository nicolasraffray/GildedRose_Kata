# frozen_string_literal: true

require_relative './../../lib/gilded_rose'

describe 'Backstage pass' do
  item = [Item.new(name = 'Backstage passes to a TAFKAL80ETC concert', sell_in = 15, quality = 20)]
  subject { GildedRose.new(item) }

  describe 'Quality Increase' do
    it 'goes up by 1 before being 10 days out from sell_in' do
      i = 0
      while i < 3
        subject.update_quality
        i += 1
      end
      expect { subject.update_quality }.to change { subject.items[0].quality }.by(1)
    end

    it 'goes up by 2 when 10 days out from sell_in' do
      i = 0
      while i < 4
        subject.update_quality
        i += 1
      end
      expect { subject.update_quality }.to change { subject.items[0].quality }.by(2)
    end

    it 'quality goes up by 3 when 5 days out or less from sell in' do
      i = 0
      while i < 4
        subject.update_quality
        i += 1
      end
      expect { subject.update_quality }.to change { subject.items[0].quality }.by(3)
    end

    it 'goes to zero after the concert date' do
      subject.update_quality
      expect(subject.items[0].quality).to eq 0
    end
  end

  describe 'Sell_in dropping' do
    it 'the sell in date value falls as time goes by' do
      expect { subject.update_quality }.to change { subject.items[0].sell_in }.by(-1)
    end
  end
end
