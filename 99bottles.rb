iteration_number = 200

numbers = ["zero", "one", "two", "three", "four", "five"]

if iteration_number > 5
  for i in (iteration_number).downto(5)
      puts("#{i} bottles of beer on the wall, #{i} bottles of beer.")
      puts("Take one down and pass it around, #{i - 1} bottles of beer on the wall.")
  end
  for i in(5).downto(0)
    if i == 2
      puts("#{numbers[i].to_s.capitalize} bottles of beer on the wall, #{numbers[i]} bottles of beer.")
      puts("Take one down and pass it around, #{numbers[i - 1]} bottle of beer on the wall.")
    elsif i == 1
      puts("#{numbers[i].to_s.capitalize} bottle of beer on the wall, #{numbers[i]} bottle of beer.")
      puts("Take one down and pass it around, no more bottles of beer on the wall.")
    elsif i == 0
      puts("No more bottles of beer on the wall, no more bottles of beer.")
      puts("Go to the store and buy some more, #{iteration_number} bottles of beer on the wall.")
    else
      puts("#{numbers[i].to_s.capitalize} bottles of beer on the wall, #{numbers[i]} bottles of beer.")
      puts("Take one down and pass it around, #{numbers[i - 1]} bottles of beer on the wall.")
    end
  end
end
