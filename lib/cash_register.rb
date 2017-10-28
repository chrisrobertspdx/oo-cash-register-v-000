class CashRegister

  attr_accessor :total, :discount, :all

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all = []
  end

  def add_item(title,price,quantity=1)
    self.total = self.total + (price * quantity)
    self.all << title
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    end
    self.total = self.total.to_f - (self.total.to_f * (self.discount.to_f)/100)
    "After the discount, the total comes to $#{self.total.to_i}."
  end

  def items
    self.all
  end

end
