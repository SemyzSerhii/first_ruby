require_relative 'user'

user = User.new('Serhii', 'Ovcharenko', 22) { |age| age < 20 }

puts 'Currency'
user.currency = gets.chomp.to_i

puts 'Money'
user.money = gets.chomp.to_i

user.options = {
  has_vas: false,
  has_villa: false
}.freeze

p user.report
p user.reach?
p User.all
# define_method(gets.chomp) do
#   p 'test'
# end

# Variables
# test - local variable
# $test - global variable
# TEST - const variable
# @test - instance variable
# @@test - class variable

# Data types
# :test - symbol
# 'test' - string
# 1 - ingeger
# [] - array
# {} - hash