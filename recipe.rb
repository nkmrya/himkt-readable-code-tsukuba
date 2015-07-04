# -*- coding: utf-8 -*-

class Recipe
  @@next_id = 1

  attr_accessor :id, :name, :explain

  def initialize()
    @id = @@next_id
    @name
    @explain
    @@next_id += 1
  end

  def display()
    puts "#{@id}: #{@name} #{@explain}"
  end

  def Recipe.set_spec(spec)
    @@spec = spec
  end

  def Recipe.read_file(path)
    recipes = []

    File.foreach(path) do |line|
      input = line.chomp.split(' ')
      recipe = Recipe.new()
      recipe.name    = input[0]
      recipe.explain = input[1]

      recipes.push(recipe)
    end

    return recipes
  end
end


arg = ARGV

# 引数がない
if arg.size == 0
  puts 'オムライス'

# 引数がファイル名
else
  spec = arg.last

  files = {}
  if spec == 'spec8'
    user_name = arg[0]
    file_path = arg[1]
    files[user_name] = file_path
    select_id = arg[2] if arg.length == 4
  elsif spec == 'spec9'
    select_id = arg[8] if arg.length == 10
    4.times do |i|
      user_name = arg.shift
      file_path = arg.shift
      files[user_name] = file_path
    end
  else
    file_path = arg[0]
    select_id = arg[1]
  end
  recipe_id = 1

  users_recipe = {}
  files.each do |user, file_path|
    users_recipe[user] = Recipe.read_file(file_path)
  end

  users_recipe.each do |user, recipes|
    puts "ユーザー名: #{user}"
    recipes.each do |recipe|
      recipe.display if select_id.nil? || select_id == recipe.id.to_s
    end
  end
end
