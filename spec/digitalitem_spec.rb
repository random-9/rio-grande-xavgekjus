# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    # initialize item
    @digital_item = DigitalItem.new('Harry Potter', 5.00)
  end

  # check initialization
  describe 'Initialization' do
    it 'is an instance of the Book class' do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end

    # check that it is an extended from Item
    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@digital_item.price).to eq(5.00)
    end

    it 'is assigned a quantity' do
      expect(@digital_item.quantity).to eq(1)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @digital_item.name = 'Paradise Lost'
      expect(@digital_item.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @digital_item.price = 20.00
      expect(@digital_item.price).to eq(20.00)
    end

    it 'reads the quantity' do
      expect(@digital_item.quantity).to eq(1)
    end
  end

  describe 'Methods' do
    it 'quantity should not increase on stock' do
      @digital_item.stock(10)
      expect(@digital_item.quantity).to eq(1)
    end

    it 'quantity should not decrease when sold' do
      @digital_item.sell(2)
      expect(@digital_item.quantity).to eq(1)
    end
  end

end
