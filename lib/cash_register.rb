class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title,price,quantity=1)
    self.total = self.total + (price * quantity)
  end

  def apply_discount
    self.total.to_f - (self.total.to_f * (self.discount.to_f)/100)
  end

end
