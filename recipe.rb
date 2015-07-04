# -*- coding: utf-8 -*-

arg = ARGV

# 引数がない
if arg.size == 0
  puts 'オムライス'

# 引数がファイル名
else
  spec = arg.last

  if spec == 'spec8'
    user_name = arg[0]
    file_path = arg[1]
    select_id = arg[2] if arg.length == 4
  else
    file_path = arg[0]
    select_id = arg[1]
  end
  recipe_id = 1

  puts "ユーザー名: #{user_name}" if user_name
  File.foreach(file_path) do |line|

    if spec == 'spec7'
      puts "#{recipe_id}: #{line.chomp} #{explains[recipe_id]}"
    else
      puts "#{recipe_id}: #{line}" if !select_id || select_id == recipe_id.to_s
    end

    recipe_id += 1
  end
end
