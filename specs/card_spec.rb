require_relative 'spec_helper'
require_relative '../card'

describe Card do
  before do
    @card = Card.new(:hearts, 11)
  end

  describe "Checking Card Suit" do

    it "suit is hearts" do
      @card.suit.must_equal :hearts
    end

    it "errors out if given invalid suit" do
      proc { Card.new( :pokemon, 11 )} .must_raise ArgumentError 
    end
  end

  describe "Checking Card Value" do


    it "value is 11" do
      @card.value.must_equal 11
    end

  end

end
