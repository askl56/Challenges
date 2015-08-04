require_relative "../src/c223-easy"
require "test/unit"

class TestC223Easy < Test::Unit::TestCase

  def test_garland
    assert_equal(0, C223Easy.new.garland('programmer'))
    assert_equal(1, C223Easy.new.garland('ceramic'))
    assert_equal(2, C223Easy.new.garland('onion'))
    assert_equal(4, C223Easy.new.garland('alfalfa'))
  end

end
