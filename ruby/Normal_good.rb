class Normal 
  attr_reader :item

  def initialize(an_item)
    @item = an_item 
  end 

  def full_update()
    update_sell_in()
    update_quality()
  end 

  private

  def update_sell_in()
    @item.sell_in -= 1
  end 

  def update_quality()
    @item.sell_in > 0 ? @item.quality -= 1 : @item.quality -= 2
  end 
end 