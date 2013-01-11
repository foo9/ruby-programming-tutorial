# encoding: utf-8

# englishNumberを拡張してみましょう。
# 最初にthousand(千の桁)を導入してください。
# 上のプログラムでは 'ten hundred'となっているところを 'one thousand'を返すように、
# あるいは、'one hundred hundred'の代わりに'ten thousand'を 返すようにします。


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
  write = left / 1000
  left  = left - write * 1000

  if write > 0
    thousand = englishNumber write
    numString = numString + thousand + ' thousand'

    if left > 0
      numString = numString + ' '
    end
  end

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

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)

puts englishNumber(1000)
puts englishNumber(10000)

