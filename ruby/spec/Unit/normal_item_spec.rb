# frozen_string_literal: true

require_relative './../../lib/Normal_good'

describe Normal do
  let(:item) { instance_double('Item', name: 'Fruit', sell_in: 6, quality: 3) }
  subject { Normal.new(item) }

  describe 'Takes in an item object' do
    let(:int) { 6 }
    it 'inherits from the item class' do
      expect(subject.item).to eq item
    end
  end
end
