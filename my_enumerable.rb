module MyEnumerable
  def all?
    numbers = []
    list.each { |num| numbers.push(num) if yield num }
    p numbers.length == list.length
  end

  def any?
    numbers = []
    list.each { |num| numbers.push(num) if yield num }
    p !numbers.empty?
  end

  def filter
    filtered_numbers = []
    list.each { |num| filtered_numbers.push(num) if yield num }
    p filtered_numbers
  end
end
