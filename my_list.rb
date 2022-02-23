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
# => #<MyList: @list=[1, 2, 3, 4]>

list.all? { |e| e < 5 }
# => true
list.all? { |e| e > 5 }
# => false

list.any? { |e| e == 2 }
# => true
list.any? { |e| e == 5 }
# => false

list.filter?(&:even?)
# => [2, 4]
