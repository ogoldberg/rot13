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

  def test_ascii
    a='b'
    assert_equal 98, a[0].ord()
    assert_equal 'B', 66.chr
    assert_equal "z", 122.chr
  end

  def rot13(n)
    #chip brains ruby line
    ascii_value=n[0].ord()
    #a=6
    puts "before: " + ascii_value.to_s
    if (ascii_value>=65 and ascii_value<=77)
      ascii_value += 13
    end
    if (ascii_value>=78 and ascii_value<=90)
      ascii_value -= 13
    end
    if (ascii_value>= 97 and ascii_value<=109)
      ascii_value += 13
    end
    if (ascii_value>=110 and ascii_value<=122)
      ascii_value -= 13
    end
    puts "after: " + ascii_value.to_s

    return ascii_value.chr()
  end
end