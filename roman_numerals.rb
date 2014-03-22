# write a method that when passed an integer between 1 and 3000 returns a string containing the proper old roman numeral.
# In other words, old_school_numeral 4 should return a string containing the proper old school roman numeral

def old_school_numeral(num)
  romans = [1000, 500, 100, 50, 10, 5, 1]
  result = ''
# divide num through each number in array. save result out, save remainder out, run through next number until done
  romans.each do |roman|
    if num/roman >= 1
      result += translate(roman, num)
      num = num % roman  
    end
  end 
  puts result  
end  
  

def translate(roman, num)
  print_times = num/roman
  if roman == 1000
    return 'M' * print_times
  elsif roman == 500
    return 'D' * print_times
  elsif roman == 100
    return 'C' * print_times
  elsif roman == 50
    return 'L' * print_times
  elsif roman == 10
    return 'X' * print_times
  elsif roman == 5
    return 'V' * print_times
  elsif roman == 1
    return 'I' * print_times
  end
end

puts old_school_numeral 100


  
  
