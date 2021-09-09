require "test_helper"
require "01/14_listar_mejorada"

class ListarMejoradaTest < Minitest::Test
  def test_listar_mejorada_vacio
    assert_equal "", listar_mejorada({})
  end

  def test_listar_mejorada_default
    assert_equal "1. clave: valor", listar_mejorada(clave: "valor")
    assert_equal "1. clave: valor\n2. clave1: 10",
                 listar_mejorada(clave: "valor", clave1: 10)
  end

  def test_listar_mejorada_pegamento
    assert_equal "1. clave -> valor", listar_mejorada({ clave: "valor" }, " -> ")
    assert_equal "1. clave -> valor\n2. clave1 -> 10",
                 listar_mejorada({ clave: "valor", clave1: 10 }, " -> ")
  end
end
