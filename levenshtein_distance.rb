def read_file(file_name)
  data = Array.new
  file = File.open(file_name).read
  file.each_line do |line|
    data.push(line)
  end
  return data
end

def calculate_levenshtein_distance(string_1, string_2)
  n = string_1.length
  m = string_2.length
  array = Array.new(m + 1){Array.new(n + 1)}

  for i in 0..m
    array[i][0] = i
  end

  for j in 1..n
    array[0][j] = j
  end

  for i in 1..m
    for j in 1..n
      cost = (string_1[i] == string_2[j]) ? 0 : 1
      array[i][j] = [array[i - 1][j] + 1, array[i][j - 1] + 1,
      array[i - 1][j - 1] + cost].min
    end
  end

  return  array[m][n]
end

puts "--Terminal arguments--"
puts "String_1: #{ARGV[0]}"
puts "String_2: #{ARGV[1]}"
puts "Cost: #{ calculate_levenshtein_distance(ARGV[0], ARGV[1]) }"

data = read_file('words_levenshtein_distance')
puts "--File arguments--"
puts "String_1: #{data[0]}"
puts "String_2: #{data[1]}"
puts "Cost: #{ calculate_levenshtein_distance(data[0], data[1]) }"
