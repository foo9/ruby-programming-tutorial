# encoding: utf-8

# ロガー、改良版。 前のロガーの出力は少し読みにくく、
# 多く使うほど より悪くなっていくようです。
# もし、内部のブロックで行が字下げ(インデント)されていれば
# 断然読みやすくなると思われます。
# それをするには、ロガーが、何か出力するたびに
# 何段階の入れ子になっているか保存しておく必要があるでしょう。
# その際、 コードのどの場所からも見ることができる変数である、グローバル変数 を使いなさい。
# この、グローバル変数を作るためには、$で始まる名前を 使えば良いです。
# たとえば、$global, $nestingDepthあるいは、 $bigTopPeeWeeはグローバル変数です。
# そして、最後、ロガーは、こんなふうな出力をするようにします。

$nestingDepth = 0

def log descriptionOfBlock, &block
  indent = "  " * $nestingDepth
  $nestingDepth += 1
  puts "#{indent}開始 \"#{descriptionOfBlock}\"..."
  result = block.call
  puts "#{indent}...\"#{descriptionOfBlock}\" 終了, 返り値は: #{result}"
  $nestingDepth -= 1
  result
end

log '外ブロック' do
  log 'ある小さなブロック' do
    log 'ちっちゃなブロック' do
      'lots of love'
    end
    42
  end
  log 'もうひとつのブロック' do
    'I like Indian food!'
  end
  true
end

