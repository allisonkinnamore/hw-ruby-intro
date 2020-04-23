# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # arr.sum
  result = 0
  arr.each {|x| result += x}
  result
end

def max_2_sum arr
  #result = 0
  #if arr.length == 1
  #  result =  arr[0]
  #elsif arr.length == 1
  #  arr.sort!
  #  result =  arr[-1] + arr[-2]
  # sum(arr.sort.last(2))
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
  #if /^[01]+$/.match?(s)
  #else
  #  false
  #end
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

