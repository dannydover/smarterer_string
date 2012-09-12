require 'test/unit'
require 'smarterer_string'

#Test code for smarterer_string. Depends on test::unit as a testing framework.
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
  
  def test_obfuscate_alternative
    assert_equal "The ***** brown fox jumped **** the ***** but lazy *** **** and **** again.", 
      SmartererString.obfuscate("The quick brown fox jumped over the quick but lazy dog over and over again.", ["over", "quick", "dog"])
  end
  
  def test_report_alternative
    h = Hash.new
    h["quick"] = 2
    h["over"] = 3
    h["dog"] = 1
    
    assert_equal h,
      SmartererString.report("The quick brown fox jumped over the quick but lazy dog over and over again.", ["over", "quick", "dog"])
  end

end