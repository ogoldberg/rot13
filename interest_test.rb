require "test/unit"

class MyTest < Test::Unit::TestCase

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
  def test_interest_1_second_with_zero_interest
    assert_equal 1.00, compute_interest(1, 0, 1)
  end

  def test_interest_2_seconds_with_zero_interest
    assert_equal 1.00, compute_interest(1, 0, 2)
  end

  def test_interest_2_seconds_with_five_percent
      assert_equal 1.1025, compute_interest(1, 0.05, 2)
  end

  def test_interest_1_seconds_with_five_percent
      assert_equal 1.05, compute_interest(1, 0.05, 1)
      puts compute_interest(1, 1, 20)
  end

  def compute_interest(principal, interest, number_of_times_i_want_to_compute_interest)
    number_of_times_i_want_to_compute_interest.times do
      principal = principal + (principal * interest)      
    end
    return principal

  end


end