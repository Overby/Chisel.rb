gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/chisel'

class ChiselTest < Minitest::Test

  def test_parse_text_with_one_pound
    chisel = Chisel.new
    assert_equal "<h1>Example</h1>", chisel.parse("#Example")
  end
#
  def test_parse_text_with_two_pound_signs
    chisel = Chisel.new
    assert_equal "<h2>Example2</h2>", chisel.parse("##Example2")
  end

  def test_parse_text_with_three_pound_signs
    chisel = Chisel.new
    assert_equal "<h3>Example3</h3>", chisel.parse("###Example3")
  end

  def test_parse_text_without_pound
    chisel = Chisel.new
    assert_equal "<p>Example</p>", chisel.parse("Example")
  end

  def test_words_with_asterisk_is_italic
    chisel = Chisel.new
    assert_equal "<p>We <em>have</em> it</p>", chisel.parse("We *have* it")
  end


end
