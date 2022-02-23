require_relative 'my_enumerable'

class MyList
  @list = []
  include MyEnumerable

  def each(&block)
    @list.each(&block)
  end

  def initialize(*lis)
    @list = lis
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list)
# => #<MyList: @list=[1, 2, 3, 4]>

puts(list.all? { |e| e < 5 })
# => true
puts(list.all? { |e| e > 5 })
# => false

puts(list.any? { |e| e == 2 })
# => true
puts(list.any? { |e| e == 5 })
# => false

puts(list.filter?(&:even?))
# => [2, 4]
