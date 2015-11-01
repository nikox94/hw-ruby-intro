# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  end
  sum = 0
  arr.each{|a| sum+=a}
  return sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  if arr.size==1
    return arr[0]
  end
  sa = arr.sort.reverse
  return sa[0]+sa[1]
end

def sum_to_n? arr, n
  return false if arr.empty?
  return false if arr.size == 1
  # Actually we have no limitation on
  # positiveness of numbers so we should
  # consider all cases.
  # Hence a sort might not be the most appropriate thing to do yet.
  for i in 0..(arr.size-1)
    for j in (i+1)..arr.size
      return true if i+j == n
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " << name
end

def starts_with_consonant? s
  return false if s.empty?
  c = s[0]
  return !(/[[:alpha:]&&[^AEIOUaeiou]]/ =~ c).nil?
end

def binary_multiple_of_4? s
  return false if s.empty?
  return true if s == "0" || s == "00"
  return false if s.length < 3
  if /(^[01]*$)/ =~ s
    s_rev = s.reverse
    if s_rev[0]=='0' && s_rev[1]=='0'
      return true
    end
  end
  false
end

# Part 3

class BookInStock
  attr_reader :isbn
  attr_reader :price
  def initialize(isbn, price)
    self.isbn=(isbn)
    self.price=(price)
  end
  def isbn=(new_isbn)
    raise ArgumentError if !new_isbn.is_a? String
    raise ArgumentError if new_isbn.empty?
    @isbn=new_isbn
  end
  def price=(new_price)
    raise ArgumentError if !new_price.is_a? Numeric
    raise ArgumentError if new_price <= 0
    @price = new_price
  end
  def price_as_string
    require 'bigdecimal'
    intsum = (@price*100).round
    rev = intsum.to_s.reverse
    result = rev[0,2] + '.' + rev[2..rev.size] + '$'
    result.reverse
  end
end
