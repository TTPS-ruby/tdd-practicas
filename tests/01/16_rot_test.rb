require "test_helper"
require "01/16_rot"

class RotTest < Minitest::Test
  def test_rot_vacio
    assert_equal "", rot("", 1)
    assert_equal "¿10\n?", rot("¿10\n?", 4)
  end

  def test_rot_like13
    assert_equal "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm",
                 rot("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 13)
    assert_equal "¿Pbzb fr chrqr qvfgvathve n ha rkgebiregvqb qr ha vagebiregvqb " \
                 "ra yn AFN? En los ascensores, el extrovertido mira los zapatos " \
                 "de los OTROS tipos.",
                 rot("¿Como se puede distinguir a un extrovertido de un " \
                     "introvertido en la NSA? Ra ybf nfprafberf, ry rkgebi" \
                     "regvqb zven ybf mncngbf qr ybf BGEBF gvcbf.", 13)
  end

  def test_rot1
    assert_equal "Mjovy", rot("Linux", 1)
  end

  def test_rot2
    assert_equal "Nkpwz", rot("Linux", 2)
  end

  def test_rot3
    assert_equal "Olqxa", rot("Linux", 3)
  end
end
