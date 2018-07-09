string_1 = ARGV[0]
string_2 = ARGV[1]

array = Array.new(n + 1){Array.new(m + 1)}

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

puts array[m][n]
