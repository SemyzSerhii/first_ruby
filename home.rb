p random=Array.new(4){ Array.new(4){rand(-10..10)} }.flatten.select(&:negative?).sum
class String
 def like_yes?
  self =~ /^yes/
 end
end
p a= {'yesye22s' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => 'yes', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'y2esteryesar' => 2014}.keys.map(&:to_s).select(&:like_yes?).length
