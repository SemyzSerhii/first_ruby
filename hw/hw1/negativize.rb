# frozen_string_literal: true
class Negativize
  attr_accessor :matrix

  def initialize
    generate
  end

  def generate
    @matrix = random_matrix
  end

  def call
    matrix.flatten.select(&:negative?).sum
  end

  private

  def random_matrix
    Array.new(4) {Array.new(4) {rand(-10..10)}}
  end
end
