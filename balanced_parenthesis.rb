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

  # first attempt fails for matching string for spec 35. I realize that return true was the error
  # instead I should return see if there is an empty array.
  # def self.is_balanced?(string)
  #   return false if string.length.odd?
  #
  #   pairs = {'(' => ')' }
  #
  #   string.chars.each_with_object([]) do |paren, arr|
  #     if pairs.keys.include?(paren)
  #       arr << paren
  #     elsif pairs.values.include?(paren)
  #       return false unless pairs[arr.pop] == paren
  #     else
  #       return false
  #     end
  #   end
  #   true
  # end

end
