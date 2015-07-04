# -*- coding: utf-8 -*-

arg = ARGV

recipes = ['オムライス','親子丼','杏仁豆腐']
explains = {
  1=>'卵を焼いてごはんにのせる',
  2=>'鶏肉を焼いて卵でとじてごはんにのせる',
  3=>'牛乳と砂糖をまぜてゼラチンで固める'
}

# 引数がない
if arg.size == 0
  puts 'オムライス'

# 引数がファイル名
elsif arg[0] == 'recipe-data.txt'
  
  select_id = arg[1]
  recipe_id = 1

  File.foreach('./recipe-data.txt') do |line|
    if arg[1] = 'spec7'
      puts "#{recipe_id}: #{line.chomp} #{explains[recipe_id]}"
    else
      puts "#{recipe_id}: #{line}" if !select_id || select_id == recipe_id.to_s
    end

    recipe_id += 1
  end

# 引数が仕様4
elsif arg[0] == 'spec4'

  io = open('recipe-data.txt','w')
  recipes.each do |recipe, index|
    io.puts "#{recipe}"
  end
  io.close
  File.foreach('./recipe-data.txt') do |line|
    puts line
  end

end

