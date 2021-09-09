require "test_helper"
require "01/09_string_functions"

class StringFunctionsTest < Minitest::Test
  def test_string_reverso
    assert_equal "", string_reverso("")
    assert_equal "aloh", string_reverso("hola")
    assert_equal "!!odnuM aloH", string_reverso("Hola Mundo!!")
  end

  def test_string_sin_espacio
    assert_equal "", string_sin_espacio("")
    assert_equal "", string_sin_espacio("      ")
    assert_equal "", string_sin_espacio(" \n\t")
    assert_equal "holamundo", string_sin_espacio("hola mundo")
    assert_equal "holamundo", string_sin_espacio("\t\n hola\t\n mundo\t\n ")
  end

  def test_string_a_arreglo_ascii
    assert_equal [], string_a_arreglo_ascii("")
    assert_equal [97], string_a_arreglo_ascii("a")
    assert_equal [72, 111, 108, 97, 32, 109, 117, 110, 100, 111, 33], string_a_arreglo_ascii("Hola mundo!")
  end

  def test_string_reemplaza_vocal
    assert_equal "", string_reemplaza_vocal("")
    assert_equal "bcdfg", string_reemplaza_vocal("bcdfg")
    assert_equal "m6rc13l4g0", string_reemplaza_vocal("murcielago")
    assert_equal "M6RC13L4G0", string_reemplaza_vocal("MURCIELAGO")
  end
end
