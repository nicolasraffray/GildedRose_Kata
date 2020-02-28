class Brie 
  attr_reader :item 

  def initialize(an_item)
    @item = an_item 
  end

  def update_sell_in()
    @item.sell_in -= 1
  end 

  def update_quality()
    @item.quality += 1
  end 

end 