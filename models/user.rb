class User
  attr_accessor :fname, :lname, :age, :is_old, :currency, :money, :options

  EMAIL = 'mail@example.com'.freeze

  def initialize(fname, lname, age)
    self.age = age
    self.fname = fname
    self.lname = lname

    self.is_old = yield age
  end

  def full_name
    name = "#{fname} #{lname}"
    name.strip.empty? ? EMAIL : name
  end

  def report
    "#{full_name} has #{ money * currency } money and he is #{ 'not ' unless reach? }reach "
  end

  private

  def reach?
    return true if (options[:has_villa] || options[:has_mercedes] || options[:is_reach])

    money * currency > 1000
  end
end

user = User.new('Serhii', 'Ovcharenko', 22) { |age| age < 20 }

user.currency = 2
user.money = 200
user.options = {has_vas: true, has_villa: true}

p user.report
p user.reach?