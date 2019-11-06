class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end  #Just this bundle of code produces output 12 --> 99 --> 37 --> nil when called

class Stack
    attr_accessor :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        if @data == nil
          node1 = LinkedListNode.new(value)
          @data = node1
        else
          node1 = LinkedListNode.new(value, @data)
          @data = node1
        end

    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
       if @data == nil
        return @data
       else
        get_value = @data.value
        @data = @data.next_node #give me the value stored in next node
        return get_value #give me the value stored in variable
       end
    end
end

def reverse_list(list)
  stack = Stack.new #create object of new empty stack

  while list #while list is being executed,...
    stack.push(list.value) #push value into the stack
    list = list.next_node # list values in nodes of stack
  end

    LinkedListNode.new(stack.pop, stack.data) #pop node from stack, show data from node
end


#accessor methods

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3) #output the contents of the Linked List

puts "-------"

revlist = reverse_list(node3)

print_values(revlist) #should produce output 12 --> 99 --> 37 --> nil / ------ / 37 --> 99 --> 12 --> nil