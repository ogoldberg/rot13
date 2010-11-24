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
  def test_Q

    # To change this template use File | Settings | File Templates.\
    assert_equal "D", rot13("Q")
  end

  def test_n
    assert_equal 'a', rot13('n')
  end
  def test_m
    assert_equal 'z', rot13('m')
  end

  def test_N
    assert_equal 'A', rot13('N')
  end

  def test_not_modified
    my_letter = "a"
    assert_equal "n", rot13(my_letter)
    assert_equal "a", my_letter
  end

  def test_ascii
    a='b'
    assert_equal 98, a[0].ord()
    assert_equal 'B', 66.chr
    assert_equal "z", 122.chr
  end

  def test_period
    assert_equal ".", rot13(".")
  end

  def rot13(n)
    return n.tr "A-Za-z", "N-ZA-Mn-za-m";
  end
end