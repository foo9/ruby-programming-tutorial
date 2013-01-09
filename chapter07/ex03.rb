# encoding: utf-8

# 以前、メソッドの章で書いた 目次を表示するプログラムを修正してみましょう。
# その際、プログラムの最初で 目次の情報(つまり、章の名前やページ番号など)を
# すべてひとつの配列にしまいます。
# その後、その配列から情報を取り出して美しくフォーマットされた目次を出力します。

line_width = 50
half_line_width = line_width / 2

contents = []
contents.push ["数", "1"]
contents.push ["文字", "72"]
contents.push ["変数", "118"]

contents.each_with_index do |c, i|
  puts "#{i + 1}章: #{c[0]}".ljust(half_line_width) + "p. #{c[1]}".rjust(half_line_width)
end

