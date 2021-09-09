require "test_helper"
require "01/07_contar"

class ContarTest < Minitest::Test
  def test_contar_string_vacio
    assert_equal 0, contar("", "word")
    assert_equal 0, contar("word", "")
  end

  def test_contar_igual_case
    assert_equal 1, contar("word", "word")
    assert_equal 2, contar("word other word", "word")
  end

  def test_contar_otro_case
    assert_equal 1, contar("word", "WoRd")
    assert_equal 2, contar("word other word", "WORD")
  end

  def test_contar_word_is_not_word
    assert_equal 2, contar("word or sword", "Word")
  end
end
