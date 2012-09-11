require 'test/unit'
require 'smarterer_string'

class SmartererStringTest < Test::Unit::TestCase
  def test_simple
    assert_equal "hello world", "hello world"
  end

end