# frozen_string_literal: true
class Parser
  attr_accessor :hash

  def initialize(hash)
    self.hash = hash
  end

  def call
    hash.keys.map(&:to_s).select {|element| element =~ /^yes/}.length
  end
end
