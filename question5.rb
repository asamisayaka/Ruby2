#テストの得点と、それに対応する生徒の名前を入力していきすべて入力し終わった段階で、テストの得点の高い方から順番に上から表示し、最後に平均得点を表示するプログラムを作ってください。

def yes(sum_data)
  data={}
  puts "生徒の名前を入力してください:"
  data[:name] = gets.chomp
  puts "得点を入力してください:"
  data[:tokuten] = gets.to_i
  sum_data << data
  return sum_data
  true
end

def average(sum_data)
  number = 0
  sum = 0
  sum_data.each do |data|
    sum += data[:tokuten]
    number += 1
  end
  sum/number
end

def no(sum_data)
  puts "------------------------------------------------"
  sum_data = sum_data.sort{|a, b|b[:tokuten]<=>a[:tokuten]}
  sum_data.each do |data|
    puts "#{data[:name]} : #{data[:tokuten]}"
  end
  puts "------------------------------------------------"
  puts "平均得点 : #{average(sum_data)}"
end


#実行
  puts "得点を入力しますか？:[0]yes [1]no"
  input = gets.to_i
  sum_data=[]

  if input==1 then
    false
    exit
  elsif input==0 then
    yes(sum_data)
  else
    puts "エラー"
    false
  end

  while true do
    puts "得点を入力しますか？:[0]yes [1]no"
    input = gets.to_i
     if input==0 then
      yes(sum_data)
     elsif input==1 then
      no(sum_data)
      exit
     else puts "エラー"
     end
  end
