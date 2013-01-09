# encoding: utf-8

# ハッピーバースデー! 　生まれた年、月、そして日を順に訊いて
# そこから年齢を計算します。
# そして、過ごしてきた誕生日それぞれに対して
# 大きなおめでとう!をプレゼントしましょう。

require 'date'

HAPPY_BIRTHDAY_MESSAGE = <<-EOS
 _______  _______  ______  ______  ___ ___      ______  _______  ______  _______  _______  _____   _______  ___ ___  __
 |   |   ||   _   ||   __ \|   __ \|   |   |    |   __ \|_     _||   __ \|_     _||   |   ||     \ |   _   ||   |   ||  |
 |       ||       ||    __/|    __/ \     /     |   __ < _|   |_ |      <  |   |  |       ||  --  ||       | \     / |__|
 |___|___||___|___||___|   |___|     |___|      |______/|_______||___|__|  |___|  |___|___||_____/ |___|___|  |___|  |__|
EOS

puts "Please input your birthday."

puts "year:"
year = STDIN.gets.chomp.to_i

puts "month:"
month = STDIN.gets.chomp.to_i

puts "day:"
day = STDIN.gets.chomp.to_i

current_time = Time.now
birthday_time = Time.new(year, month, day)

current_age = (current_time.strftime("%Y%m%d").to_i - birthday_time.strftime("%Y%m%d").to_i) / 10000
current_age.times do |age|
  puts "\n"
  puts Time.new(year + age, month, day).strftime("%Y/%m/%d").to_s
  puts HAPPY_BIRTHDAY_MESSAGE
  puts "\n"
end

