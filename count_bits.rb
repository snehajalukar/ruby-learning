# https://www.codewars.com/kata/526571aae218b8ee490006f4/train/ruby
# Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case
def count_bits(n)
  # Solution 1
  
  binary = n.to_s(2)
  
  binary.chars.map do |n|
      n.to_i
  end.sum

  # Solution 2
  # n.to_s(2).chars.map {|x| x.to_i}.sum

  # Solution 3

  # binary = n.to_s(2)
  # count = 0
  
  # binary.each_char do |n|
    # val = n.to_i
    # count += val
  # end

  # count
end
