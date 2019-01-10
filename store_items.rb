class Store_items
  attr_reader :color, :price, :item, :sale
  attr_writer :price, :sale

  def initialize(color, price, item, sale)
    @color = color
    @price = price
    @item = item
    @sale = sale
  end

end


item_1 = Store_items.new("yellow", 1.99, "bananna", "no")
item_2 = Store_items.new("pink", 5.99, "ham", "no")
item_3 = Store_items.new("green", 2.50, "grapes", "yes")

p item_1.item
p item_1.color
item_2.price = "FREE"
item_2.sale = "no"
p item_2.price
p item_2.sale