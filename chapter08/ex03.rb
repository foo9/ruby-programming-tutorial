# encoding: utf-8

# weddingNumberはどうでしょう?
# このプログラムはweddingNumber とほとんど同じように動作しますが、
# "and" という接続詞をやたらめったら挿入します。
# たとえば 'nineteen hundred and seventy and two' という具合に、
# 結婚式の 招待状のような感じで。


def weddingNumber number
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
  write = left/100          #  百の桁以上の桁をwriteに入れます。
  left  = left - write*100  #  下2桁をleftに残します。

  if write > 0
    hundreds  = weddingNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' and '
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
      numString = numString + ' and '
    end
  end

  write = left  #  ここで、一の桁を書き出します。
  left  = 0     #  この桁を引きます。(0になります。)

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts weddingNumber(  0)
puts weddingNumber(  9)
puts weddingNumber( 10)
puts weddingNumber( 11)
puts weddingNumber( 17)
puts weddingNumber( 32)
puts weddingNumber( 88)
puts weddingNumber( 99)
puts weddingNumber(100)
puts weddingNumber(101)
puts weddingNumber(234)
puts weddingNumber(3211)
puts weddingNumber(999999)
puts weddingNumber(1000000000000)

puts weddingNumber(1972)

