require "test_helper"
require "01/13_listar"

class ListarTest < Minitest::Test
  def test_listar_vacio
    assert_equal "", listar({})
  end

  def test_listar
    assert_equal "1. clave: valor", listar(clave: "valor")
    assert_equal "1. clave: valor\n2. clave1: 10", listar(clave: "valor",
                                                          clave1: 10)
  end
end
