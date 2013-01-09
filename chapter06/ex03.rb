# encoding: utf-8

# 上で作った、「耳の遠いおばあちゃんのプログラム」を拡張しましょう。 おばあちゃんはあなたに行って欲しくないのです。 あなたがBYEと叫んでもおばあちゃんは聞こえないふりをします。 BYEを3回連続で 叫ばないといけないように変更してみてください。 BYEと3回叫んでも 連続していない限り、おばあちゃんとの会話は続くようになっているか プログラムをテストして確認してみましょう。 

year = min_year = 1930
rand_max = 30

bye_count = 0

while input = STDIN.gets.chomp
	if input == "BYE"
		bye_count = bye_count + 1
		if bye_count == 3
			break
		end
	else
		bye_count = 0
	end
	if input == input.upcase
		year = min_year + rand(rand_max)
		puts "いやー、#{year}年以来ないねー!"
	else
		puts "は?! もっと大きな声で話しておくれ、坊や!"
	end
end
