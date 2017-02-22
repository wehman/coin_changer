require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

	def test_pass_zero_cents_returns_empty_hash
	  results = get_change(0)
	  assert_equal({},results)
	end

	def test_pass_one_cent_returns_hash_with_one_penny
	  results = get_change(1)
	  assert_equal({penny: 1},results)
	end

#	def test_pass_two_cents_returns_hash_with_two_cents
#	  results = get_change(2)
#	  assert_equal({penny: 2},results)
#	end

#	def test_pass_five_cents_returns_hash_with_one_nickel
#	  results = get_change(5)
#	  assert_equal({nickel: 1},results)
#	end	
end
