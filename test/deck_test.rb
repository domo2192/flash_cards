require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'

class Decktest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs
      and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is
        697.5° clockwise from due north?", "North north west", :STEM)
        cards = []
        cards << card_1
        cards << card_2
        cards << card_3
        deck = Deck.new(cards)
    assert_equal [card_1, card_2, card_3] , deck.cards
    binding.pry
    assert_equal 3, deck.count
  end
end
