class Cat
attr_accessor :size

   def initialize(name) 
      @name = name #variable is a string/hash
      @size = 2
    end

   def meow  #function is a block of code that we can run
    puts "meow"
   end

  def self.which_is_bigger(cat1, cat2) 
    return cat1.size > cat2.size
  end

   private

   def purr  #function a user cannot call
    puts "purr"
   end
    
end

cat = Cat.new("Harry") #call initialize function
cat.meow()
cat2 = Cat.new("Sally")
Cat.which_is_bigger(cat, cat2) #calling function using variable cat and cat2