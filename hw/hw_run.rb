require_relative 'hw1/negativize'
require_relative 'hw2/parser'

HW2_HASH = {
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

hw1 = Negativize.new
hw2 = Parser.new(HW2_HASH)

p hw1.call
hw1.generate
p hw1.call

p hw2.call