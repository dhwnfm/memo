require "csv"


puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i


if memo_type == 1

  puts "新規でメモを作成"  
  puts "拡張子を除いたファイルを入力してください。"
  
file_name = gets

puts "メモしたい内容を記入してください"
puts "完了したら　Ctrl＋Dを推します"

memo = gets

CSV.open("#{file_name}.csv","w") do |csv|
csv << ["#{memo}"]

end

elsif memo_type == 2
    
puts "既存のメモ編集する"  
puts "拡張子を除いたファイルを入力してください。"  
　　
file_name = gets
　　 
puts "追加したい内容を記入してください"
　　
memo = gets

CSV.open("#{file_name}.csv","a") do |csv|
csv << ["#{memo}"]

end
 
else  
　
  memo_type = gets.to_i 

end
 