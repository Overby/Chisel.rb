gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/chisel'

class ChiselTest < Minitest::Test

  def test_parse_text_with_one_pound
    chisel = Chisel.new
    assert_equal "<h1>Example</h1>", chisel.parse("#Example")
  end

  def test_parse_text_with_two_pound_signs
    chisel = Chisel.new
    assert_equal "<h2>Example2</h2>", chisel.parse("##Example2")
  end

  def test_parse_text_with_three_pound_signs
    chisel = Chisel.new
    assert_equal "<h3>Example3</h3>", chisel.parse("###Example3")
  end

  def test_parse_text_with_four_pound_signs
    chisel = Chisel.new
    assert_equal "<h4>Example4</h4>", chisel.parse("####Example4")
  end

  def test_parse_text_with_five_pound_signs
    chisel = Chisel.new
    assert_equal "<h5>Example5</h5>", chisel.parse("#####Example5")
  end

  def test_parse_text_without_pound
    chisel = Chisel.new
    assert_equal "<p>Example</p>", chisel.parse("Example")
  end

  def test_text_without_starting_pound_becomes_paragraph
    chisel = Chisel.new #same as test above; one purpose each
    assert_equal "<p>Example</p>", chisel.parse("Example")
  end

  def test_words_with_asterisk_is_italic
    chisel = Chisel.new
    assert_equal "<p>We <em>have</em> it</p>", chisel.parse("We *have* it")
  end

  def test_words_with_two_asterisks_are_bold
    skip
    chisel = Chisel.new
    assert_equal "<p>We <strong>have</strong> it</p>", chisel.parse("We **have** it")
  end

  def test_unordered_list_outputs_correctly
    chisel = Chisel.new
    assert_equal "<ul><li>Sushi</li><li>Barbecue</li><li>Mexican</li></ul>",
                chisel.parse("* Sushi\n* Barbeque\n* Mexican\n")
  end

  def test_parse_text_in_unordered_list
    skip
    chisel = Chisel.new
    assert
  end

  def test_parse_text_in_ordered_list
    skip
    chisel = Chisel.new
    assert
  end

  def test_ordered_list_outputs_correctly
    skip
    chisel = Chisel.new
    assert
  end

end
