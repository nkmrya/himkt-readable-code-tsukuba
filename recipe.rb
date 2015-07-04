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

def spec6
  id = 1
  select_id = ARGV[0].to_i if ARGV[0]
  File.foreach('./recipe-data.txt') do |line|
    puts "#{id}:#{line}" unless select_id
    puts "#{id}:#{line}" if select_id == id
    id+=1
  end
end

def spec7
  explain = {1=>'卵を焼いてごはんにのせる', 2=>'鶏肉を焼いて卵でとじてごはんにのせる', 3=>'牛乳と砂糖をまぜてゼラチンで固める'}
File.foreach('./recipe-data.txt') do |line|
    puts "#{id}:#{line.chomp} #{explain[id]}"
    id+=1
  end
end


arg = ARGV

# 引数がない
if !arg
  puts 'オムライス'
elsif arg[0] == 'recipe-data.txt'
  File.foreach('./recipe-data.txt') do |line|
    puts line
  end
elsif arg[0] == 'spec4'
  recipes = ['オムライス','親子丼','杏仁豆腐']
  open('recipe-data.txt','w') do |output|
    recipes.each do |recipe|
      output.puts recipe
    end
  end
end
