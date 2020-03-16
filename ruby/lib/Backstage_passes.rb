# frozen_string_literal: true

class BackstagePass
  attr_reader :item

  def initialize(an_item)
    @item = an_item
  end

  def full_update
    update_sell_in()
    update_quality()
  end

  private

  def update_sell_in
    @item.sell_in -= 1
  end

  def update_quality
    if @item.sell_in > 10 && is_quality_below_50()
      @item.quality += 1
    elsif @item.sell_in > 5 && is_quality_below_50()
      @item.quality += 2
    elsif @item.sell_in > 0 && is_quality_below_50()
      @item.quality += 3
    elsif is_quality_below_50
      @item.quality = 0
    else
      @item.quality
    end
  end

  def is_quality_below_50
    @item.quality < 50
  end
end
