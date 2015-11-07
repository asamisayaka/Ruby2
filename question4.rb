#問題
# 勝った場合 "あなたの勝ちです"と表示させる
# 負けた場合 "あなたの負けです"と表示させる
# あいこの場合 "あいこで"と表示させたあともう一度じゃんけんをさせる


#定義
#出す手の表示

#勝ち負け判断
def katimake(input2,watashi2)
  if input2==watashi2 then
    puts "あいこで"
    true
  elsif (input2 == 0 && watashi2 ==1)||(input2 == 2 && watashi2 == 0)||(input2 == 1 && watashi2 == 2)then
    puts "あなたの勝ちです"
    false
  else
    puts "あなたの負けです,yooooooo"
    false
  end
end

#じゃんけん
def jyanken
puts "[0]:グー \n[1]:チョキ \n[2]:パー"

#️相手の手
input2 = gets.to_i
anata_te=["グー","チョキ","パー"]

#私の手
watashi_te=["グー","チョキ","パー"]
watashi2=rand(3).to_i

#表示
puts "あなたの手:#{anata_te[input2]}、私の手:#{watashi_te[watashi2]}"
katimake(input2,watashi2)
end

#実行

#表示
puts "最初はグー、じゃんけ.."
puts "[0]:グー \n[1]:チョキ \n[2]:パー"

#️相手の手
input = gets.to_i
anata_te=["グー","チョキ","パー"]

#私の手
watashi_te=["グー","チョキ","パー"]
watashi=rand(3).to_i

#表示
puts "あなたの手:#{anata_te[input]}、私の手:#{watashi_te[watashi]}"
while katimake(input,watashi) do
  if (jyanken==false) then
    exit
  else
  end
end
