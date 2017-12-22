require_relative 'user'

user = User.new('Serhii', 'Ovcharenko', 22) { |age| age < 20 }

user.currency = 2
user.money = 200
user.options = { has_vas: true, has_villa: true }

p user.report
p user.reach?
