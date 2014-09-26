require 'minitest/autorun'

require "excalibur"

class BasicTest < Minitest::Unit::TestCase
  def test_basic
    assert_equal 1, 1
  end
end
