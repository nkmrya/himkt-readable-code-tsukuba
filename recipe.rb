# -*- coding: utf-8 -*-

def spec1
  puts 'オムライス'
end

def spec3
  File.foreach('./recipe-data.txt') do |line|
    puts line
  end
end

def spec4
  
  # レシピ
  recipes = [
    'オムライス',
    '親子丼',
    '杏仁豆腐'
  ]

  # 登録
  open('./recipe-data.txt', 'w') do |out|
    recipes.each do |recipe|
      out.puts recipe
    end
  end
  
  # 出力
  spec3
end

def spec5
  id = 0
  File.foreach('./recipe-data.txt') do |line|
    puts "#{id}:#{line}"
    id += 1
  end
end

=begin
case ARGV[0]
when '1'
  spec1
when '3'
  spec3
when '4'
  spec4
when '5'
  spec5
else
  puts '仕様番号を指定してください'
  puts 'ruby recipe.rb <仕様番号>'
end
=end







id = 1
select_id = ARGV[0].to_i if ARGV[0]
File.foreach('./recipe-data.txt') do |line|
  puts "#{id}:#{line}" unless select_id
  puts "#{id}:#{line}" if select_id == id
  id+=1
end





