iteration_number = 99

def get_number(number)
  number_to_string = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}
  if(number <= 5)
    return number_to_string[number]
  else
    return number
  end
end

def get_form(number)
  if number == 1
    return 'bottle'
  else
    return 'bottles'
  end
end

for i in (iteration_number).downto(2)
  puts("#{get_number(i)} #{get_form(i)} of beer on the wall, #{get_number(i)} #{ get_form(i)} of beer.")
  puts("Take one down and pass it around, #{get_number(i - 1)} #{get_form(i - 1)}  of beer on the wall.")
end

puts ("#{get_number(1)} #{get_form(1)} bottle of beer on the wall, #{get_number(1)} #{get_form(1)} of beer.")
puts ("Take one down and pass it around, no more bottles of beer on the wall.")
puts("No more bottles of beer on the wall, no more bottles of beer.")
puts("Go to the store and buy some more, #{iteration_number} #{get_form(iteration_number)} of beer on the wall.")
