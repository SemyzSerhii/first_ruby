# frozen_string_literal: true

class String
  def like_yes?
    self =~ /^yes/
  end
end

def task_1
  p Array.new(4) { Array.new(4) { rand(-10..10) } }.flatten.select(&:negative?).sum
end

def task_2
  hash = {
    'yesye22s': 23,
    'b': 'travel',
    'yesterday': 34,
    5 => 'yes',
    yesss: :fg,
    try: 30,
    key: 'some value',
    'yesterday1': 34,
    'y2esteryesar': 2014
  }.freeze

  p hash.keys.map(&:to_s).select(&:like_yes?).length
end
