class Tipper
  TAX = 0.05

  def initialize(amount:, discount_percentage: 0, tip_percentage:)
    @amount = amount
    @discount_percentage = discount_percentage
    @tip_percentage = tip_percentage
  end

  def total
    amount_with_tax - amount_with_discount + amount_with_tip
  end

  private

  attr_reader :amount, :discount_percentage, :tip_percentage

  def amount_with_tax
    amount + (amount * TAX)
  end

  def amount_with_discount
    amount * (discount_percentage / 100.0)
  end

  def amount_with_tip
    amount * (tip_percentage / 100.0)
  end
end
