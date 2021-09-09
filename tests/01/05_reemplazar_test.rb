require "test_helper"
require "01/05_reemplazar"

class ReemplazarTest < Minitest::Test
  def test_empty_string
    assert_equal "", reemplazar("")
  end

  def test_non_replacements
    assert_equal "nothing to replace", reemplazar("nothing to replace")
  end

  def test_replace_open_block
    assert_equal "do\n", reemplazar("{")
  end

  def test_replace_multiple_open_blocks
    assert_equal "do\ndo\ndo\n", reemplazar("{{{")
  end

  def test_replace_close_block
    assert_equal "\nend", reemplazar("}")
  end

  def test_replace_multiple_close_block
    assert_equal "\nend\nend\nend", reemplazar("}}}")
  end

  def test_real_ruby_block
    assert_equal "3.times do\n |i| puts i \nend",
                 reemplazar("3.times { |i| puts i }")
  end
end
