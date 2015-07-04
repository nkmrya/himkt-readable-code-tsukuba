# -*- coding: utf-8 -*-

arg = ARGV

# 引数がない
if !arg
  puts 'オムライス'

elsif arg[0] == 'recipe-data.txt'
  
  select_id = arg[1]
  recipe_id = 1

  File.foreach('./recipe-data.txt') do |line|
    puts "#{recipe_id}: #{line}" if !select_id || select_id == recipe_id.to_s
    recipe_id += 1
  end

# 登録するやつ
elsif arg[0] == 'spec4'
  
  io = open('recipe-data.txt','w')
  
  recipes = ['オムライス','親子丼','杏仁豆腐']
  recipes.each do |recipe, index|
    io.puts "#{recipe}"
  end

  io.close
end
