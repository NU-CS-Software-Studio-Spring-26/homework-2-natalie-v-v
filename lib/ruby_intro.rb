
# Part 1

def sum(arr)
  total = 0
  arr.each { |num| total += num }
  total
end

def max_2_sum(arr)
  case arr.length
  return 0 if arr.length == 0
  return arr.first when arr.length == 1
  else
    largest = arr.max
    arr.delete_at(arr.index(largest))
    second_largest = arr.max
    largest + second_largest
  end
end

def sum_to_n?(arr, n)
  return false if arr.length < 2
  seen = {}
  arr.each do |num|
    return true if seen[n - num]
    seen[num] = true
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  first = s[0]
  return false if first.nil?

  consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
  consonants.include?(first)
end

def binary_multiple_of_4?(s)
  return false if s.empty?

  s.each_char do |char|
    return false unless char == "0" || char == "1"
  end

  value = s.to_i(2)
  value % 4 == 0
end

# Part 3

class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn == "" || price <= 0

    @isbn = isbn
    @price = price.to_f
  end

  def isbn=(value)
    @isbn = value
  end

  def price=(value)
    @price = value.to_f
  end

  def price_as_string
    "$" + sprintf("%.2f", @price)
  end
end