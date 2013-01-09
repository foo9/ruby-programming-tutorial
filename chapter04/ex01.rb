# encoding: utf-8

# 最初に姓、次に名前を聞いて、最後にフルネームに対してあいさつを するようなプログラムを書いてみましょう。

puts "Please input your first name:"
first_name = STDIN.gets.chomp

puts "Please input your family name:"
family_name = STDIN.gets.chomp

puts "Hello, #{first_name} #{family_name}."

