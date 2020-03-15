# frozen_string_literal: true

require_relative './../../lib/Backstage_passes'

describe BackstagePass do
  let(:item) { double(name: 'Backstage passes to a TAFKAL80ETC concert') }
  subject { described_class.new(item) }

  describe 'Taking in an item' do
    it 'tkes in an item whne initialized' do
      expect(subject.item).to eq(item)
    end
  end
end
