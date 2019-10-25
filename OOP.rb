class Dog
attr_accessor :size

   def initialize(name) 
      @name = name #variable is a string/hash
      @size = 2
    end

   def bark  #function is a block of code that we can run
    puts "woof"
   end

  def self.which_is_bigger(dog1, dog2) 
    return dog1.size > dog2.size
  end

   private

   def heartbeat  #function a user cannot call
    puts "heartbeat"
   end
    
end

dog = Dog.new("Rosco") #call initialize function
dog.bark()
dog2 = Dog.new("Sally")
Dog.which_is_bigger(dog, dog2) #calling function using variable dog1 and dog2