require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  # check that it is an instance of Bluray
  before(:context) do
    @cd = Cd.new('Guardians of the Galaxy Soundtrack', 15.00, 12, 'Various', 44)
  end

  describe "Initialization" do
    it 'is an instance of the Cd class' do
      expect(@cd).to be_instance_of(Cd)
    end

# check that it is an extended from Item
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Guardians of the Galaxy Soundtrack')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(15.00)
    end

    it 'is assigned a number of tracks' do
      expect(@cd.tracks).to eq(12)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Various')
    end

    it 'is assigned a run_time' do
      expect(@cd.run_time).to eq(44)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Led Zeppelin II'
      expect(@cd.name).to eq('Led Zeppelin II')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the run_time' do
      @cd.run_time = 41
      expect(@cd.run_time).to eq(41)
    end

    it 'assigns and reads the director' do
      @cd.artist = 'Led Zeppelin'
      expect(@cd.artist).to eq('Led Zeppelin')
    end

    it 'assigns and reads the number of tracks' do
      @cd.tracks = 9
      expect(@cd.tracks).to eq(9)
    end
  end

  # check Methods
  describe 'Methods' do
    it 'should increase quantity by amount' do
      @cd.stock(10)
      expect(@cd.quantity).to eq(10)
    end

    it 'should reduce quantity by amount if quantity >= amount' do
      @cd.sell(4)
      expect(@cd.quantity).to eq(6)
    end
  end
end
