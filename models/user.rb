# frozen_string_literal: true

class User
  attr_accessor :fname, :lname, :age, :is_old, :currency, :money, :options

  EMAIL = 'mail@example.com'.freeze

  def initialize(fname, lname, age)
    self.age = age
    self.fname = fname
    self.lname = lname

    self.is_old = yield age
  end

  def self.all
    ['user1', 'user2'].freeze
  end

  def full_name
    name = "#{fname} #{lname}"
    name.strip.empty? ? EMAIL : name
  end

  def report
    "#{full_name} has #{money * currency} money and he is #{'not ' unless reach?}reach "
  end

  def reach?
    has_stuff? || (money * currency > 1000)
  end

  private

  def has_stuff?
    options[:has_villa] || options[:has_mercedes] || options[:is_reach]
  end
end

class Admin < User
end

# metaprogramming example
# def att_my_accessor *params
#   params.each do |param|
#     define_method param do
#       instance_variable_set("@#{param}", nil)
#     end
#     define_method "#{param}=" do |str|
#       instance_variable_set("@#{param}", str)
#     end
#   end
# end
