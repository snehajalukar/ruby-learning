# Write a program that prints out the numbers 1 to 100 (inclusive). 
# If the number is divisible by 3, print Crackle instead of the number. 
# If it's divisible by 5, print Pop.
# If it's divisible by both 3 and 5, print CracklePop. You can use any language.


(1..100).each do |n|
    if (n % 3 == 0) && (n % 5 == 0)
        puts "CracklePop"
    elsif n % 3 == 0
        puts "Crackle"
    elsif n % 5 == 0
        puts "Pop"
    else
        puts n
    end
end