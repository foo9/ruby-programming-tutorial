# encoding: utf-8

# 10億(One billion)秒... (もし記録が残っているなら)あなたの生まれた
# 正確な時刻を見つけ、いつ10億秒歳になる(あるいはなった)のかを 計算してみなさい。

my_birthday_time = Time.new(1984, 9, 9)

one_billion_seconds = 1000000000

result = my_birthday_time + one_billion_seconds

puts "#{result}"

