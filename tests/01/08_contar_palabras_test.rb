require "test_helper"
require "01/08_contar_palabras"

class ContarPalabrasTest < Minitest::Test
  def test_contar_palabtras_string_vacio
    assert_equal 0, contar_palabras("", "word")
    assert_equal 0, contar_palabras("word", "")
  end

  def test_contar_palabtras_igual_case
    assert_equal 1, contar_palabras("word", "word")
    assert_equal 2, contar_palabras("word other word", "word")
  end

  def test_contar_palabtras_otro_case
    assert_equal 1, contar_palabras("word", "WoRd")
    assert_equal 2, contar_palabras("word other word", "WORD")
  end

  def test_contar_palabtras_word_is_not_word
    assert_equal 1, contar_palabras("word or sword", "Word")
  end
end
