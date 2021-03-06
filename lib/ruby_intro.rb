# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each {|x| result += x}
  result
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  arr.combination(2) { |c| return true if c.sum == n}
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /^[bcdfghjklmnprstvwxyz]/i.match(s)
end

def binary_multiple_of_4? s
  /^(0|00|([01]+00))$/.match?(s)
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end

