# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |x|
    total += x
  end
  return total
end

def max_2_sum arr
  retval = 0
  
  2.times do
    if arr.length > 0
      max_index = arr.index(arr.max)
      retval += arr[max_index]
      arr.delete_at(max_index)
    end
  end
  
  return retval
end

def sum_to_n? arr, n
  arr.each do |x|
    arr.each do |y|
      if x + y == n && arr.index(x) != arr.index(y)
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, " << name
end

def starts_with_consonant? s
  vowels = ["A", "E", "I", "O", "U"]
  retval = false
  str = s.to_s
  
  if str[0] =~ /[A-Za-z]/
    if str.length > 0 && !vowels.include?(str[0].upcase)
      retval = true
    end
  else
    retval = false
  end
  
  return retval
  
end

def binary_multiple_of_4? s

  if s.length > 0
    retval = true
    s.each_char do |x|
      if x != "0" && x != "1"
        retval = false
      end
    end
    
    binstr = s.to_i(2)
    
    if binstr % 4 != 0
      retval = false
    end
  else
    retval= false
  end
  return retval
end

# Part 3

class BookInStock
  def initialize isbn, price
    @isbn = isbn
    @price = price
    raise ArgumentError unless isbn.length > 0 && price > 0
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
    retval = "$"
    price = '%.2f' % @price
    retval << price
    return retval
  end
  
end