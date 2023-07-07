class Coffeeshop
  def initialize(name, menu)
    @name = name
    @menu = menu
    @orders = []
  end

  def add_order(item)
    menu_item = @menu.find { |menu_item| menu_item[:item] == item }
    if menu_item
    @orders << item
    "Order added"
    else
      "SorryThis item is unavailable"
    end
  end

  def fulfill_order
    if @orders.empty?
      return "No orders to fulfill!"
    else
      item = @orders.shift
      return "The #{item} is ready!"
    end
  end

  def cheapest_item
    cheapest = @menu.min_by { |menu_item| menu_item[:price] }
    cheapest[:item]
  end

  def drinks_only
    drinks = @menu.select { |menu_item| menu_item[:type] == 'drink' }
    drinks.map { |menu_item| menu_item[:item] }
  end
end


menu = [ {item: 'lemon tea', type: 'drink', price: 20 },
  { item: 'cinnamon roll', type: 'food', price: 35 },
  { item: 'hot chocolate', type: 'drink', price: 60 },
  
  { item: 'iced coffee', type: 'drink', price: 50 },
  { item: 'vanilla chai latte', type: 'drink', price: 20 }
]

cs1 = Coffeeshop.new("A Little Spice", menu)
puts cs1.add_order("hot cocoa")  
puts cs1.add_order("cinnamon roll")  
puts cs1.add_order("iced coffee")   
puts cs1.fulfill_order  
puts cs1.fulfill_order   
puts cs1.cheapest_item  
puts cs1.drinks_only.inspect  
