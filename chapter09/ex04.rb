# encoding: utf-8

# 赤ちゃんドラゴンと会話が出来るようなプログラムを書いてみましょう。
# feedやwalkのようなコマンドを入力できるようにして
# ドラゴンに対してそれらのメソッドが呼ばれるようにします。
# もちろん、入力されたものは文字列なので、
# ある種のメソッドに転送する処理 をしなくてはならないでしょう。
# つまり、何の文字が入力されたかをチェックして適切な メソッドを呼び出すという処理です。

class Dragon
  def feed
    puts "crunch!"
  end

  def walk
    puts "lumber!"
  end
end

dragon_baby = Dragon.new

while input = STDIN.gets.chomp
  if dragon_baby.respond_to?(input, true)
    dragon_baby.method(input).call
  end
end

