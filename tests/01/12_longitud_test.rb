require "test_helper"
require "01/12_longitud"

class LongitudTest < Minitest::Test
  def test_longitud_vacio
    assert_equal [], longitud([])
    assert_equal [0], longitud([""])
  end

  def test_longitud_varios
    assert_equal [0, 1, 2], longitud(["", "a", "ab"])
  end
end
