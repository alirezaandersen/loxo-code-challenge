require 'json'
require 'rspec/autorun'
require_relative 'balanced_parenthesis.rb'


describe "BalancedParenthesis" do
  context "base cases" do

# good examples
    it "()" do
      expect(BalancedParenthesis.is_balanced?("()")).to be_truthy
    end

    it "" do
      expect(BalancedParenthesis.is_balanced?("")).to be_truthy
    end

    it "(())" do
      expect(BalancedParenthesis.is_balanced?("(())")).to be_truthy
    end

    it "((()()()()))" do
      expect(BalancedParenthesis.is_balanced?("((()()()()))")).to be_truthy
    end

#bad examples
    it "())" do
      expect(BalancedParenthesis.is_balanced?("())")).to be_falsey
    end

    it "())" do
      expect(BalancedParenthesis.is_balanced?("())")).to be_falsey
    end

    it "((((" do
      expect(BalancedParenthesis.is_balanced?("((((")).to be_falsey
    end

    it "(((()))" do
      expect(BalancedParenthesis.is_balanced?("(((()))")).to be_falsey
    end

    it "(((()()()()))(" do
      expect(BalancedParenthesis.is_balanced?("(((()()()()))(")).to be_falsey
    end

  end
end
