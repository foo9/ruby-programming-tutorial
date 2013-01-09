# encoding: utf-8

# おじいさんの時計 。
# ブロックを取って、今日過ぎた時間の回数だけ、 ブロックを呼ぶメソッドを書きなさい。
# それで、もし、ブロックとして do puts 'DONG!' endを渡したとしたら、
# それはおじいさんの時計のような (そんなたぐいの)チャイムを打つことになります。
# できたメソッドを、 (先ほどの例を含めて)2,3の違うブロックを使ってテストしてみなさい。


def doClock sound
  current_hour = Time.now.strftime("%l").to_i

  current_hour.times { sound.call }
end


dong = Proc.new do
  puts 'DONG!'
end

riiing = Proc.new do
  puts 'RIIING RIIIIIIIING!'
end

beep = Proc.new do
  puts 'BEEP BEEP'
end


doClock dong
doClock riiing
doClock beep

