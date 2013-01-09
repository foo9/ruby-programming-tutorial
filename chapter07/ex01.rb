# encoding: utf-8

# 好きな数だけ単語の入力をしてもらい(1行に1単語、最後はEnterだけの空行)、
# アルファベット順に並べ変えて出力するようなプログラムを書いてみましょう
# 配列を順番に並び替える(ソートする)には 素敵なメソッド sortがあります。
# これを使いましょう。

input_array = Array.new

while input = STDIN.gets
  if (/^\s+/ =~ input)
    break
  end
  input_array << input.chomp
end

puts input_array.sort
