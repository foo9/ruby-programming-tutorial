# encoding: utf-8

# 好きな数を入力してもらい、それに1を加えて、その結果を ベターな 数字として薦めるプログラムを書きましょう。 (機転の利いたサジェスチョンに努めましょう。)

puts "Please your favorite number?"
input_number = STDIN.gets.to_f
num = (input_number + 1).to_i 
puts "Result: #{num} (Add number entered in the 1. It is an integer value.)"
