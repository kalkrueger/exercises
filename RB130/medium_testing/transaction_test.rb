require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < MiniTest::Test

  def setup
    @transaction1 = Transaction.new(30)
    @register = CashRegister.new(100)
  end

  def test_prompt_for_payment
    input = StringIO.new("30\n")
    output = StringIO.new
    @transaction1.prompt_for_payment(input: input, output: output)
    assert_equal 30, @transaction1.amount_paid
  end
end
