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

elsif arg[0] == 'spec4'
  
  recipes = ['オムライス','親子丼','杏仁豆腐']
  
  open('recipe-data.txt','w') do |output|
    
    recipes.each do |recipe, index|
      output.puts "#{recipe}"
    end
  end
end
