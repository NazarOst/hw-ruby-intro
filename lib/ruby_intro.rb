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
  if arr.empty? || (arr.length.equal? 1)
    return false
  else
    bol = false    
    arr[1..-1].each do |element|
      if (arr[0] + element == n)
        bol = true
      end
      arr.delete(arr[0])
    end
    return bol
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
  
 def initialize(isbn, price)
   self.isbn = isbn
   self.price = price
 end
 
 attr_accessor :price, :isbn
 
 def isbn=(new_isbn)
    if new_isbn.size == 0
      raise ArgumentError
    else
      @isbn = new_isbn
    end 
 end
 
 def price=(new_price)
  if new_price <= 0
    raise ArgumentError
  else
    @price = new_price
  end
 end

 def price_as_string
  p_str = "$#{sprintf("%0.02f", self.price)
}" 
 end 

end
