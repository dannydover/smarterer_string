require 'test/unit'
require 'smarterer_string'

class SmartererStringTest < Test::Unit::TestCase
  def test_obfuscate
    assert_equal "*** string of *** ***** is bigger", 
      SmartererString.obfuscate("big string of big words is bigger", ["big", "words"])
  end
  
  def test_report
    h = Hash.new
    h["big"] = 2
    h["words"] = 1
    
    assert_equal h, 
      SmartererString.report("big string of big words is bigger", ["big", "words"])
  end

end