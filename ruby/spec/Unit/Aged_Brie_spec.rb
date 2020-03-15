# frozen_string_literal: true

require_relative './../../lib/Brie'

describe Brie do
  let(:item) { double(name: 'Aged Brie', sell_in: int, quality: 3) }
  subject { Brie.new(item) }

  describe 'Takes in an item object' do
    let(:int) { 2 }
    it 'inherits from the item class' do
      expect(subject.item).to eq item
    end
  end
end
