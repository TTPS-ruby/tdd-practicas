require "test_helper"
require "01/15_rot13"

class Rot13Test < Minitest::Test
  def test_rot_13_vacio
    assert_equal "", rot13("")
    assert_equal "¿10\n?", rot13("¿10\n?")
  end

  def test_rot13
    assert_equal "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm",
                 rot13("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
    assert_equal "¿Pbzb fr chrqr qvfgvathve n ha rkgebiregvqb qr ha vagebiregvqb " \
                 "ra yn AFN? En los ascensores, el extrovertido mira los zapatos " \
                 "de los OTROS tipos.",
                 rot13("¿Como se puede distinguir a un extrovertido de un " \
                       "introvertido en la NSA? Ra ybf nfprafberf, ry rkgebi" \
                       "regvqb zven ybf mncngbf qr ybf BGEBF gvcbf.")
  end
end
