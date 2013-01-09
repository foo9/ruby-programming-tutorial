# encoding: utf-8

# うるう年。 開始の年と終わりの年を聞いて、その間にあるすべてのうるう年を (もし開始や終了の年がうるう年だったらそれも含めて)表示するプログラムを書きましょう。 うるう年は(1984年とか2004年のように)4で割り切れる数の年です。ただし、100で割り切れる年は うるう年ではなくて (たとえば1800年や1900年)、さらに、それは 400で割り切れない限り です。(つまり、1600年や2000年はうるう年です。) 

require 'date'

puts "Please input begin year:"
begin_year = STDIN.gets.chomp.to_i

puts "Please input end year:"
end_year = STDIN.gets.chomp.to_i

begin_year.upto(end_year) do |year|
	if Date::leap?(year)
		puts "#{year}"
	end
end
	
