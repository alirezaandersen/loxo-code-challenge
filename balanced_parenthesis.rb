require 'json'
require 'rspec/autorun'
require 'pry'

class BalancedParenthesis

  def self.is_balanced?(string)
    return false if string.length.odd?

    pairs = { '(' => ')' }

    arr = []
    string.chars do |paren|
      if expected_pairs = pairs[paren]
        arr << expected_pairs
      else
        return false unless arr.pop == paren
      end
    end
    arr.empty?
  end

end
