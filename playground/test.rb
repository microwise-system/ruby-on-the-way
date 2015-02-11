require 'minitest/autorun'
require_relative 'math_util'

class MathUtilTest < MiniTest::Unit::TestCase

  def setup
    @math = MathUtil.new
  end

  def test_add
    result = @math.add(1, 2)
    assert_equal result, 3
  end

  def test_max
    result = @math.max([1, 2, 3, 4])
    assert_equal result, 4
  end

  def test_sum
    result = @math.sum([1, 2, 3, 4])
    assert_equal result, 10
  end

  def test_double
    result = @math.double([1, 2, 3, 4])
    assert_equal result, [2, 4, 6, 8]
  end

end