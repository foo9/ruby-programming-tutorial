# encoding: utf-8

# "99本のビールが壁に..." englishNumberと以前作ったプログラムを使って、
# 今度は正しい 方法で この歌の詩を出力させなさい。
# その後は、9999から初めてコンピュータをこらしめましょう。

def englishNumber number
  if number < 0  #  負の数は不可です。
    return '負でない数を入力してください.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  #  これが最終的に返す文字列です。

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number

  # trillion
  write = left / 1000000000000
  left  = left - write * 1000000000000

  if write > 0
    trillion = englishNumber write
    numString = numString + trillion + ' trillion'

    if left > 0
      numString = numString + ' '
    end
  end

  # billion
  write = left / 1000000000
  left  = left - write * 1000000000

  if write > 0
    billion = englishNumber write
    numString = numString + billion + ' billion'

    if left > 0
      numString = numString + ' '
    end
  end

  # million
  write = left / 1000000
  left  = left - write * 1000000

  if write > 0
    million = englishNumber write
    numString = numString + million + ' million'

    if left > 0
      numString = numString + ' '
    end
  end

  # thousand
  write = left / 1000
  left  = left - write * 1000

  if write > 0
    thousand = englishNumber write
    numString = numString + thousand + ' thousand'

    if left > 0
      numString = numString + ' '
    end
  end

  # hundred
  write = left/100          #  百の桁以上の桁をwriteに入れます。
  left  = left - write*100  #  下2桁をleftに残します。

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10          #  今度は十の桁です。
  left  = left - write*10  #  そして十の桁をひきます。

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left  #  ここで、一の桁を書き出します。
  left  = 0     #  この桁を引きます。(0になります。)

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end


# "99本のビールが壁に..."
9999.downto(1) do |i|
  num_str = englishNumber(i).capitalize
  num_str2 = englishNumber(i - 1).capitalize
  puts "#{num_str} Bottles of beer on the wall"
  puts "#{num_str} Bottles of beer"
  puts "Take one down and pass it around"
  puts "#{num_str2} Bottles of beer on the wall"
  puts "\n"
end

