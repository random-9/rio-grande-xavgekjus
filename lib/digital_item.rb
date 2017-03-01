# You are on your own... good luck.
require_relative 'item.rb'

class DigitalItem < Item
  attr_reader :quantity
  def initialize(name, price, quantity = 1)
    super(name, price)
    @quantity = quantity
  end

  def stock(amount)
    @quantity = 1
  end

  def sell(amount)
    @quantity = 1
  end
end
