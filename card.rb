class Card  
   attr_accessor :rank, :suit  
   def initialize(rank, suit)  
    self.rank = rank  
    self.suit = suit  
   end  
    
   def output_card  
    puts "#{self.rank} of #{self.suit}"  
   end  
    
   def self.random_card  
    Card.new(rand(10), :spades)  
   end  
  end  
     
  class Deck  
   def initialize  
    @cards = []  
    @ranks = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]  
    @suits = ["Diamonds", "Spades", "Hearts", "Clubs"]
    
   def output  
    @ranks.each do |rank|  
     @suits.each do |suit|  
      @cards << Card.new(rank, suit)   
     end  
    end  
   end 


   def shuffle  
    @cards.shuffle!  
   end  
  end  
    
   def deal (num)  
    num.times{@cards.shift.output_card}  
   end  
  end  
     
  deck = Deck.new  
  deck.output  
  deck.shuffle  
  deck.deal(1)  