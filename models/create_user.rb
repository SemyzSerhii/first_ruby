require_relative 'user'

user = User.new('Serhii', 'Ovcharenko', 22) { |age| age < 20 }

puts 'currency'
user.currency = gets.chomp.to_i

puts 'money'
user.money = gets.chomp.to_i

user.options = { has_vas: false, has_villa: false }

p user.report
p user.reach?
