# Instructions to Coding_challenges



##Image Blur 1

Build a class that allows us to build a new image with the data we specify. Make it possible for the class to output the image to the screen. Your goal is to have the following code work:

```
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image
```

And when you run that code it will output the following to the terminal window:

```
0000
0100
0001
0000
```

##Image Blur 2

Image Blur #2: Perform an Image Transformation

In the previous assignment we build a data representation of a pure black and white image. In this assignment we will perform a transformation on the image data.

Given a black and white image, represented as the class you already implemented, implement a blur method to run a transformation on the image. Running the blur transformation causes any 1 in the image to cause the pixel to the left, right, above and below to become a 1.

##Image Blur 3

Given an image, we want to build a method to blur the image. However, instead of only blurring images that are within 1 pixel, we want to specify how far to blur pixels that are within a Manhattan DistanceLink opens in new tab of what is specified. In the previous challenge we built a method that will produce the blurring with a Manhattan distance of 1. Build the method def blur(distance) that will implement a blurring of the Manhattan distance specified.

In short: you want to find all 1's and turn any pixels that can be reached by making n moves or less using only left, right, up or down from the starting point.

##Linked List 1

The following ruby code implements a LinkedList:

```
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
```

Using that representation of a linked list, you can build the LinkedList, node3, which represents data from the diagram displayed above, like this:

```
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
```

Dealing with a Linked List

A LinkedList is a recursive datatype. This is because within one instance a LinkedListNode, the next_node can point to another LinkedListNode instance.

Writing code to output the contents of the LinkedList can be done by writing the following print_values method. This method uses recursion, meaning the function calls itself (and also checks that it is able to call itself before it does).
```
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
```

That code should produce an output that looks something like this:
```
macbook-air:$ ruby code.rb
12 --> 99 --> 37 --> nil
```

Linked List #1: Reverse a Linked List Using a Stack

In this assignment, implement the reverse_list method such that when you run the following code:
```
print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
```

The following is the output in the terminal window:

```
macbook-air:$ ruby code.rb
12 --> 99 --> 37 --> nil
------
37 --> 99 --> 12 --> 
```

##Linked List 2

In the last challenge, we introduced the concept of a Linked List and you performed a transformation on the data structure to build a new Linked List that was the reversed list. In this challenge, you will reverse the linked list using mutation to modify the initial list that is provided.

You will change the existing LinkedList and as you go through the list you will adjust the next_node to point to the previous node.

So with this method you'll want to change the value of the next_node as you traverse the list.

Here's a hint to get you started:

```
def reverse_list(list, previous=nil)
  # do stuff
end
```
Fill in the blanks and make this method reverse the existing LinkedList and return the value of the new head, which would be the previous tail of the LinkedList.

##Object Oriented Programming (OOP)

Build a class for a Dog, Pony, Mountain, or any real world object you want to represent in code.


Satisfy the following criteria:

The class should take arguments when you build a new instance of it.
The class should store the values that it is initialized with, in its instance variables.
You should use attr_accessor.