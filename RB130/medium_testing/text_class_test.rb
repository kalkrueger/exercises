require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'text_class'

class CashRegisterTest < MiniTest::Test

  def setup
    Dir.chdir(File.dirname(__FILE__))
    @file = File.open('sample_text.txt')
  end

  def test_swap
    text = Text.new(@file.read)
    actual = text.swap('a', 'b')

    replaced = <<~TEXT
    Lorem ipsum dolor sit bmet, consectetur bdipiscing elit. Crbs sed vulputbte ipsum.
    Suspendisse commodo sem brcu. Donec b nisi elit. Nullbm eget nisi commodo, volutpbt
    qubm b, viverrb mburis. Nunc viverrb sed mbssb b condimentum. Suspendisse ornbre justo
    nullb, sit bmet mollis eros sollicitudin et. Etibm mbximus molestie eros, sit bmet dictum
    dolor ornbre bibendum. Morbi ut mbssb nec lorem tincidunt elementum vitbe id mbgnb. Crbs
    et vbrius mburis, bt phbretrb mi.
    TEXT

    assert_equal replaced, actual
  end

  def test_word_count
    text = Text.new(@file.read)
    assert_equal 72, text.word_count
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end

end
