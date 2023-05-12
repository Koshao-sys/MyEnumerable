require_relative 'my_enumerable'
class MyList
  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
  include MyEnumerable
end

# Create a list
my_list_obj = MyList.new(1, 2, 3, 4)
p my_list_obj.list

# Test #all? method
my_list_obj.all? { |e| e < 5 } # => true
my_list_obj.all? { |e| e > 5 } # => false

# Test #any? method
my_list_obj.any? { |e| e == 2 } # => true
my_list_obj.any? { |e| e == 5 } # => false

# Test #filter method
my_list_obj.filter(&:even?) # => [2,4]
