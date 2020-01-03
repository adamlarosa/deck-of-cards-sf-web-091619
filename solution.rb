require 'pry'
class Card
    attr_reader :rank, :suit
    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end

class Deck
    attr_reader :cards
    def initialize
        @cards = []
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits.each { |suit|
            ranks.each { |rank|
                newcard = Card.new(suit, rank)
                @cards << newcard
            }
        }
    end

    def choose_card
        @cards.shuffle!  # bang is changing array
        chosen_card = @cards.pop
    end
end





