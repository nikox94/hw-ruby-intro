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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
