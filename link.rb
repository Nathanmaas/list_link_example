# Node class
# value value item placeholder

# LinkedList class

# two values @head @tail - new nodes

# insert_front method on LinkedList


class Node
  attr_accessor :data, :next

  def initialize data
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_accessor :head, :tail, :count

  def initialize
    @head = nil
    @tail = nil
  end

  def insert_front data
    temp = @head
    @head = Node.new(data)
    @head.next = temp
    @tail = @head if @tail.nil?
  end

  def output node = nil
    node ||= @head
    puts node.data
    output node.next unless node.next.nil?
  end
end

list = LinkedList.new
list.insert_front 5
list.insert_front 8
list.insert_front 3

list.output











