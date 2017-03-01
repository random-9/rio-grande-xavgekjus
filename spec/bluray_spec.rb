require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  # check that it is an instance of Bluray
  before(:context) do
    @bluray = Bluray.new('Harry Potter', 13.00, 60, 'JK Rowling', 'Max')
  end

  describe "Initialization" do
    it 'is an instance of the Bluray class' do
      expect(@bluray).to be_instance_of(Bluray)
    end

# check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(13.00)
    end

    it 'is assigned a run_time' do
      expect(@bluray.run_time).to eq(60)
    end

    it 'is assigned a director' do
      expect(@bluray.director).to eq('JK Rowling')
    end

    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('Max')
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Paradise Lost'
      expect(@bluray.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @bluray.price = 20.00
      expect(@bluray.price).to eq(20.00)
    end

    it 'assigns and reads the run_time' do
      @bluray.run_time = 20
      expect(@bluray.run_time).to eq(20)
    end

    it 'assigns and reads the director' do
      @bluray.director = 'John Milton'
      expect(@bluray.director).to eq('John Milton')
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'John Milton'
      expect(@bluray.producer).to eq('John Milton')
    end
  end

  # check Methods
  describe 'Methods' do
    it 'should increase quantity by amount' do
      @bluray.stock(10)
      expect(@bluray.quantity).to eq(10)
    end

    it 'should reduce quantity by amount if quantity >= amount' do
      @bluray.sell(2)
      expect(@bluray.quantity).to eq(8)
    end
  end
end
