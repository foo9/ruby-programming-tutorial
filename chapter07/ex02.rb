# encoding: utf-8

# 上のプログラムをsortメソッドなしで 書けますか。
# プログラミングの大部分は、問題解決にあります。 これはいい練習になります。

input_array = Array.new

while input = STDIN.gets
  if (/^\s+/ =~ input)
    break
  end

  input_array << input.chomp
end

# bubble sort
len = input_array.length
i = 0
while (i < len - 1) do
  j = len - 1;
  while (j > i) do
    if (input_array[j - 1] > input_array[j])
      tmp = input_array[j]
      input_array[j] = input_array[j - 1]
      input_array[j - 1] = tmp
    end
    j = j - 1
  end
  i = i + 1
end

puts input_array.to_s
