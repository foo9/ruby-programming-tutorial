# encoding: utf-8

# OrangeTreeクラスを作ってみなさい。
# このクラスには、木の高さを返すheightメソッドと、
# メソッドを呼ぶことで、1年分時間を進めるoneYearPassesメソッドがあります。
# 毎年、この木は成長し大きくなります(オレンジの木が1年に伸びる分だけ)。
# そして、ある年限が来たら(これもメソッド呼び出しによります) その木は死んでしまいます。
# 最初の2，3年は実をつけませんが、その後は 実がなる様にします。
# で、成長した木は若い木よりたくさん実をつけます。
# このあたりはあなたが納得するよう調節してみましょう。
# そして、もちろんcountTheOranges(木になっているオレンジの数を返す)メソッドと、
# pichAnOrange(オレンジをひとつ摘むメソッド。このメソッドで
# @orangeCountが、1だけ小さくなり、いかにおいしいオレンジだったかを告げる文字列か
# あるいは、もう木にオレンジがなっていないことを告げる文字列かを返します。)を
# 実行できるようにしなければいけません。
# それと、ある年に取り残したオレンジは次の年には落ちてしまうようにしましょう。

class OrangeTree

  def initialize
    @orangeCount = 0
    @height = 0
    @age = 0
    @alive = true
    puts "オレンジの木を植えました"
  end

  # 木の高さを返す
  def height
    @height
  end

  # 1年分時間を進める
  def oneYearPasses
    if @alive
      @orangeCount = 0
      @age = @age + 1
      @height = @height + 10 + rand(10)

      puts "植えてから#{@age}年経過------------"

      if @age > 3
        @orangeCount = 2 + (@age * 0.5).to_i
        if @age > 30
          die
        end
      end
    end
  end

  # 木になっているオレンジの数を返す
  def countTheOranges
    @orangeCount
  end

  # オレンジをひとつ摘む
  def pichAnOrange
    if @orangeCount > 0
      @orangeCount = @orangeCount - 1
      puts "オレンジの実をひとつ摘みました。オレンジおいしす"
    else
      puts "オレンジの実はなってません"
    end
  end

  private

  def die
    if @alive
      @alive = false
      @orangeCount = 0
      puts "オレンジの木は枯れました"
    end
  end

end


orangeTree = OrangeTree.new
puts "オレンジの木の高さ: #{orangeTree.height}"
puts "オレンジの実の数: #{orangeTree.countTheOranges}"

31.times do
  orangeTree.oneYearPasses
  puts "オレンジの木の高さ: #{orangeTree.height}"
  puts "オレンジの実の数: #{orangeTree.countTheOranges}"
  orangeTree.pichAnOrange
  puts "オレンジの実の数: #{orangeTree.countTheOranges}"
end

