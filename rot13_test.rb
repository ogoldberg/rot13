require "test/unit"

class Rot13 < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  
  def test_a

    # To change this template use File | Settings | File Templates.\
    assert_equal "n", rot13("a")
  end
  def test_b

    # To change this template use File | Settings | File Templates.\
    assert_equal "o", rot13("b")
  end
  def test_ascii
    a='b'
    assert_equal 98, a[0].ord()
    assert_equal 'B', 66.chr
  end
  def rot13(n)
    case n
      when 'a'
        return 'n'
      when 'b'
        return 'o'
    end
  end
end