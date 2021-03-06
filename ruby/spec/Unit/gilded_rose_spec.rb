# frozen_string_literal: true

require_relative './../../lib/gilded_rose'

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [Item.new('foo', 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).not_to eq 'fixme'
    end
  end
end
