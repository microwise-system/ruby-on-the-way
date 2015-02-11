require 'minitest/autorun'
require_relative 'math_util'
require_relative 'string_util'
require_relative 'hash_util'

class MathUtilTest < MiniTest::Test

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

class StringUtilTest < MiniTest::Test
  def setup
    @string = StringUtil.new
  end

  def test_say_hello
    result = @string.say_hello('basten')
    assert_equal result, 'hello, basten'
  end

  def test_join
    result = @string.join(['I ', ' am', ' awesome'])
    assert_equal result, 'I am awesome'
  end
end

class HashUtilTest < MiniTest::Test
  def setup
    @hash = HashUtil.new
  end

  def test_key_of_max
    result = @hash.key_of_max({'foo'=> 1234, 'bar'=> 4567, 'max_key' => 9999})
    assert_equal result, 'max_key'
  end

  def test_to_hash
    key_array = ['string', :symbol, 456]
    value_array = [1, 'abc', 654]
    result = @hash.to_hash key_array, value_array
    assert_equal result, {'string' => 1, :symbol => 'abc', 456 => 654}
  end
end