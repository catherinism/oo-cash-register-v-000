require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []

end

def total
  @total
end

def add_item(item, price, quantity = 1)
  self.total += price * quantity
  @items << item.split * quantity
  self.items = @items.flatten
end

def apply_discount
  if self.total == 0
    "There is no discount to apply."
else self.total = self.total - (self.total * @discount/100)
  "After the discount, the total comes to $#{self.total}."
end
end



end

#Add items of varying quantities and prices
#Calculate discounts
#Keep track of what's been added to it
#Void the last transaction
