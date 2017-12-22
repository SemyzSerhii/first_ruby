# frozen_string_literal: true

def task_3
  p 365 * 24
  p 365 * 10 * 24 * 60
  p 365 * 22 * 24 * 60 * 60
  p 943_000_000 / 60 / 60 / 24 / 365

  var1 = 5
  var2 = '2'
  var3 = var1 + var2.to_f

  p var3

  puts 'Яке ваше ім\'я?'
  name = gets.chomp
  puts 'Яке вас звати по-батькові?'
  father_name = gets.chomp
  puts 'Яке ваше прізвище?'
  second_name = gets.chomp

  puts "Вас звати #{name} #{father_name} #{second_name}"

  puts 'Your favorite number?'
  number = gets.chomp.to_i
  puts "your new favorite and better number #{number + 1} ;-)"
end
