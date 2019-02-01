# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0

  arr.each do |n|
    total += n
  end

  return total
end

def max_2_sum arr
  return sum(arr.sort.reverse[0, 2])
end

def sum_to_n? arr, n
  for first in 0...arr.length
    for second in (first+1)...arr.length
      return true if (arr[first] + arr[second] == n)
    end
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false unless s[0].to_s =~ /[[:alpha:]]/

  vowels = ['a', 'e', 'i', 'o', 'u']
  not vowels.include?(s.downcase[0])
end

def binary_multiple_of_4? s
  return false if s =~ /[^0-1 ]/

  last_char = s[s.length - 1]
  second_to_last_char = s[s.length - 2]
  third_to_last_char = s[s.length - 3]

  second_to_last_bit = second_to_last_char != " " ? second_to_last_char : third_to_last_char
  return (last_char == "0") && (second_to_last_bit == "0")
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError.new("ISBN is empty string or Price is less than or equal to 0.")
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string()
    "$#{'%.2f' % @price}"
  end
end
