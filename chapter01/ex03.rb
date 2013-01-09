# encoding: utf-8

# あなたが生まれてから今日まで何秒たっているでしょうか?

require 'date'

puts "あなたの生年月日は？"

print "何年:"
birthday_year = STDIN.gets.to_i

print "何月:"
birthday_month = STDIN.gets.to_i

print "何日:"
birthday_day = STDIN.gets.to_i

if Date::valid_date?(birthday_year, birthday_month, birthday_day)
  birthday = Date.new(birthday_year, birthday_month, birthday_day)
  today = Date.today
  diff = (today - birthday)
  puts diff.to_i * 24 * 60 * 60
end

