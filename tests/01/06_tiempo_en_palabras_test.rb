require "test_helper"
require "01/06_tiempo_en_palabras"

class TiempoEnPalabrasTest < Minitest::Test
  def setup
    @today = Time.new
    @hour = 10
  end

  def test_en_punto
    0.upto(10).each do |min|
      assert_equal format("Son las %d en punto", @hour),
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, @hour, min)
                   )
    end
  end

  def test_una_en_punto
    0.upto(10).each do |min|
      assert_equal "Es la 1 en punto",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 1, min)
                   )
    end
  end

  def test_y_cuarto
    11.upto(20).each do |min|
      assert_equal format("Son las %d y cuarto", @hour),
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, @hour, min)
                   )
    end
  end

  def test_una_y_cuarto
    11.upto(20).each do |min|
      assert_equal "Es la 1 y cuarto",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 1, min)
                   )
    end
  end

  def test_y_media
    21.upto(34).each do |min|
      assert_equal format("Son las %d y media", @hour),
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, @hour, min)
                   )
    end
  end

  def test_una_y_media
    21.upto(34).each do |min|
      assert_equal "Es la 1 y media",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 1, min)
                   )
    end
  end

  def test_menos_veinticinco
    35.upto(44).each do |min|
      assert_equal format("Son las %d menos veinticinco", (@hour + 1)),
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, @hour, min)
                   )
    end
  end

  def test_menos_veinticinco_cambia_dia
    35.upto(44).each do |min|
      assert_equal "Son las 0 menos veinticinco",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 23, min)
                   )
    end
  end

  def test_una_menos_veinticinco
    35.upto(44).each do |min|
      assert_equal "Es la 1 menos veinticinco",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 0, min)
                   )
    end
  end

  def test_menos_cuarto
    45.upto(55).each do |min|
      assert_equal format("Son las %d menos cuarto", (@hour + 1)),
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, @hour, min)
                   )
    end
  end

  def test_menos_cuarto_cambia_dia
    45.upto(55).each do |min|
      assert_equal "Son las 0 menos cuarto",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 23, min)
                   )
    end
  end

  def test_una_menos_cuarto
    45.upto(55).each do |min|
      assert_equal "Es la 1 menos cuarto",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 0, min)
                   )
    end
  end

  def test_casi
    56.upto(59).each do |min|
      assert_equal format("Casi son las %d", (@hour + 1)),
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, @hour, min)
                   )
    end
  end

  def test_casi_cambia_dia
    56.upto(59).each do |min|
      assert_equal "Casi son las 0",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 23, min)
                   )
    end
  end

  def test_casi_una
    56.upto(59).each do |min|
      assert_equal "Casi es la 1",
                   tiempo_en_palabras(
                     Time.new(@today.year, @today.month, @today.day, 0, min)
                   )
    end
  end
end
