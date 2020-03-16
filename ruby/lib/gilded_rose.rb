require_relative './Brie'
require_relative './Item'
require_relative './Conjured'

class GildedRose
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      case item.name 
      when "Aged Brie"
        brie = Brie.new(item)
        brie.full_update
      when "Backstage passes to a TAFKAL80ETC concert"
        backstage = BackstagePass.new(item)
        backstage.full_update
      when "Sulfuras, Hand of Ragnaros"
        item 
      when "Conjured"
        conjured = Conjured.new(item)
        conjured.full_update
      else 
        normal_good = Normal.new(item)
        normal_good.full_update
      end 
    end 
  end
end