require 'pry'
class Card
    attr_reader :rank, :suit
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
end

class Deck
    attr_reader :cards
    def initialize

        
        @cards = []
        
        ranks = ["Hearts", "Clubs", "Diamonds", "Spades"]
        suits = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        
        ranks.each { |rank|
            suits.each { |suit|
                newcard = Card.new(rank, suit)
                @cards << newcard
            }
        }
    end

    def choose_card
        @cards.shuffle!  # bang is changing array
        chosen_card = @cards.pop
        puts chosen_card
    end
    binding.pry
end





