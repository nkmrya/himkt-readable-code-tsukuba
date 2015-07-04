# -*- coding: utf-8 -*-

def spec1
  puts 'オムライス'
end

def spec3
  File.foreach('./recipe-data.txt') do |line|
    puts line
  end
end

case ARGV[0]
when '1'
  spec1
when '3'
  spec3
else
  puts '仕様番号を指定してください'
  puts 'ruby recipe.rb <仕様番号>'
end
