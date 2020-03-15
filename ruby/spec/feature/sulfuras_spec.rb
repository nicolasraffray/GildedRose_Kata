# frozen_string_literal: true

require_relative './../../lib/gilded_rose'

describe 'Sulfuras' do
  item = [Item.new('Sulfuras, Hand of Ragnaros', 0, 73)]
  subject = GildedRose.new(item)

  describe 'sell_in' do
    it 'sell_in does not change' do
      expect { subject.update_quality }.not_to change { subject.items[0].sell_in }
    end
  end

  describe 'quality' do
    it 'quality does not change in update' do
      expect { subject.update_quality }.not_to change { subject.items[0].quality }
    end
  end
end
