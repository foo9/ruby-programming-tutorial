# encoding: utf-8

# プログラムロガー。 ブロックを説明する文字列と ブロックを受け取る、
# logというメソッドを書きなさい。
# doSelfImportantlyの例と似ているかもしれませんが、
# このメソッドでは、 渡されたブロックの開始を告げる文字列、
# 修了を告げるまた別の文字列、
# そしてブロックが何を返したかを告げる文字列をputsするようにします。
# これにコードブロックを送って、作ったメソッドをテストしなさい。
# ブロックの中に 別の logへの呼び出しを入れて、
# それをもうひとつのブロックに 渡しなさい。(これは入れ子構造(nesting) と呼ばれます。)
# 別の言い方をすると、次のような出力が得られるようにしなさい。
#
# 開始 "外ブロック"...
# 開始 "ある小さなブロック"...
# ..."ある小さなブロック" 終了, 返り値は:  5
# 開始 "もうひとつのブロック"...
# ..."もうひとつのブロック" 終了, 返り値は:  I like Thai food!
# ..."外ブロック" 終了, 返り値は:  false

def log descriptionOfBlock, &block
  puts "開始 \"#{descriptionOfBlock}\"..."
  result = block.call
  puts "...\"#{descriptionOfBlock}\" 終了, 返り値は: #{result}"
  result
end

log '外ブロック' do
  log 'ある小さなブロック' do
    5
  end
  log 'もうひとつのブロック' do
    'I like Thai food!'
  end
  false
end

