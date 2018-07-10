require 'json'
require 'rspec/autorun'
require 'pry'

class BalancedParenthesis

  def self.is_balanced?(string)
    return false if string.length.odd?

    pairs = {'(' => ')' }

    string.chars.each_with_object([]) do |paren, arr|
      if pairs.keys.include?(paren)
        arr << paren
      elsif pairs.values.include?(paren)
        return false unless pairs[arr.pop] == paren
      else
        return false
      end
    end
    true
  end

end
