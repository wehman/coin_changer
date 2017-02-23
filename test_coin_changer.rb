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

	def test_pass_two_cents_returns_hash_with_two_cents
	  results = get_change(2)
	  assert_equal({penny: 2},results)
	end

	def test_pass_five_cents_returns_hash_with_one_nickel
	  results = get_change(5)
	  assert_equal({nickel: 1},results)
	end	

	def test_pass_forty_one_cents_returns_hash_with_four_dimes_and_one_penny
    	results = get_change(41)
    	assert_equal({quarter:1, dime: 1, nickel: 1, penny: 1}, results)
	end

	def test_pass_two_dollars_and_seventeen_cents_returns_hash_with_eight_quarters_one_dime_one_nickel_two_cents
		results = get_change(217)
		assert_equal({quarter:8, dime:1, nickel:1, penny: 2}, results)
    end

end
