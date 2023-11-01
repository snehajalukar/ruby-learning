class Deck
    def initialize
        spades = [['spades', '1'],['spades', '2'],['spades', '3'],['spades', '4'],['spades', '5'],['spades', '6'],['spades', '7'],['spades', '8'],['spades', '9'],['spades', '10'],['spades', 'jack'],['spades', 'queen'],['spades', 'king']]
        clubs = [['clubs', '1'],['clubs', '2'],['clubs', '3'],['clubs', '4'],['clubs', '5'],['clubs', '6'],['clubs', '7'],['clubs', '8'],['clubs', '9'],['clubs', '10'],['clubs', 'jack'],['clubs', 'queen'],['clubs', 'king']]
        hearts = [['hearts', '1'],['hearts', '2'],['hearts', '3'],['hearts', '4'],['hearts', '5'],['hearts', '6'],['hearts', '7'],['hearts', '8'],['hearts', '9'],['hearts', '10'],['hearts', 'jack'],['hearts', 'queen'],['hearts', 'king'],]
        diamonds = [['diamonds', '1'],['diamonds', '2'],['diamonds', '3'],['diamonds', '4'],['diamonds', '5'],['diamonds', '6'],['diamonds', '7'], ['diamonds', '8'],['diamonds', '9'],['diamonds', '10'],['diamonds', 'jack'],['diamonds', 'queen'],['diamonds', 'king']]


        @deck = [spades, clubs, hearts, diamonds].flatten(1)
    end

    def list_desk
        p(@deck)
    end

    def shuffle_deck
        @deck = @deck.shuffle
    end

end

sample_deck = Deck.new()

sample_deck.list_desk()

puts("\n")

sample_deck.shuffle_deck()

puts("\n")

sample_deck.list_desk()

