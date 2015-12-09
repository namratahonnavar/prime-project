require 'test/unit'
require './prime_number.rb'

class Prime_Test < Test::Unit::TestCase
  def test_when_prime_number_is_passed_test_passes
    p '#######Test 1: Testing prime number'
    prime = Prime.new
    actual = prime.is_prime?(3)
    assert_equal(true, actual)
  end

  def test_when_prime_number_is_passed_test_fails
    p '#######Test 1: Testing nonprime number'
    prime = Prime.new
    actual = prime.is_prime?(4)
    assert_equal(true, actual)
  end
end