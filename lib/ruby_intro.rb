# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.empty?
    max = 0
  elsif (arr.length.equal? 1)
    max = arr[0]
  else
    max = arr.max(2).inject(0, :+)
  end
end

def sum_to_n? arr, n
  #arr.each { |el| num = n-el, bool_arr << arr.include?(num)}
  if arr.empty? || (arr.length.equal? 1)
    return false
  else
    # arr.each {|el1, el2| el1 + el2 == n }
    
    arr.each do |element|
      if (arr - [element]).include?(n - element)
        return true 
      end
        return false
    end
  end
end

# Part 2

def hello(name)
  greeting = "Hello, "
  return greeting + name
end

def starts_with_consonant? s
  /^(B|C|D|F|G|H|J|K|L|M|N|P|Q|R|S|T|V|X|Z|W|Y)\w*\W*/i =~ s
end

def binary_multiple_of_4? s
  # bin_n = /(0|1)/
  if /\b[01]+\b/ =~ s
    dec = s.to_i(2)
    if ((dec % 4) == 0)
      return true
    end
  else
    return false
  end
end

# Part 3

class BookInStock
  #before_create :check_isbn
  # validate :isbn_c
  # validate :price_c
  
 def initialize(isbn, price)
   @isbn = isbn
   @price = price
 end
 
 def isbn
   @isbn
 end
 
 def isbn=(new_isbn)
    @isbn = new_isbn
 end
 
 def price
   @price
 end
 
 def price=(new_price)
  @price = new_price
 end
  
  private
  
    def isbn_c
      if /[0-9]*[-| ][0-9]*[-| ][0-9]*[-| ][0-9]*[-| ][0-9]*/ =~ isbn
        raise ArgumentError.new("Incorrect ISBN")
      end
    end
    
    # def price_c
    #   if price <= 0
    #     #raise ArgumentError.new("Price can't be 0 or less than 0")
    #     raise ArgumentError
    #   end
    # end
end
