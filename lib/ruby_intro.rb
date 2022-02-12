# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  array_sum = 0
  if arr.length == 0
    array_sum = 0
  else
    for i in arr
      array_sum = array_sum + i
    end 
  end
  return array_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum_two_large = 0
  if arr.length == 0
    sum_two_large = 0
  elsif arr.length == 1
    sum_two_large = arr[0]
  else
    arr = arr.sort
    sum_two_large = arr[-1]+arr[-2]
  end
  return sum_two_large
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  s = 0
  output = false
  for i in 0...arr.length
    if i == arr.length - 1
      break
    end 
    for j in i+1...arr.length
      s = arr[i]+arr[j]
      if s == n
        output = true
        break
      end 
    end 
  end 
  return output
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  output = false
  if s.length != 0
    first_letter = s[0]
    if first_letter.match(/[b-df-hj-np-tv-z]/i)
      output = true
    end 
  end
  return output
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  output = false
  if s.length != 0
    if !s.match(/[^01]/)
      num = s.to_i(2)
      if num%4 == 0
        output = true
      end
    end
  end 
  puts output
  return output
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def isbn
    @isbn
  end 
  
  def price
    @price
  end 
  
  def isbn=(isbn)
    @isbn = isbn
  end 
  
  def price=(price)
    @price = price
  end 
  
  def initialize(isbn, price)
    raise ArgumentError if isbn == ''
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    formatted_price = "$%0.2f" % [@price]
    return formatted_price
  end
  
  
end
