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
  # 登録終わり
  
  # 出力
  spec3
end

case ARGV[0]
when '1'
  spec1
when '3'
  spec3
when '4'
  spec4
else
  puts '仕様番号を指定してください'
  puts 'ruby recipe.rb <仕様番号>'
end
