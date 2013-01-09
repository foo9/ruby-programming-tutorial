# encoding: utf-8

# "99本のビールが壁に..." 遠足などでよく歌われる古典的な童謡の歌詞、"99 Bottles of Beer on the Wall" を 出力するプログラムを書いてみましょう。

99.downto(1) do |i|
	puts "#{i} Bottles of beer on the wall"
	puts "#{i} Bottles of beer"
	puts "Take one down and pass it around"
	puts "#{i - 1} Bottles of beer on the wall"
	puts "\n"
end

