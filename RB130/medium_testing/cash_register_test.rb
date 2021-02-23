# require 'simplecov'
# SimpleCov.start

require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test

  def setup
    @transaction1 = Transaction.new(10)
    @register = CashRegister.new(100)
  end

  def test_accept_money
    @transaction1.amount_paid=(10)
    @register.accept_money(@transaction1)
    assert_equal 110, @register.total_money
  end

  def test_change
    @transaction1.amount_paid=(12)
    change = @register.change(@transaction1)
    assert_equal 2, change
  end

  def test_give_receipt
    assert_output "You've paid $10.\n" do
      @register.give_receipt(@transaction1)
    end
  end

  def test_prompt_for_payment
    input = StringIO.new("30\n")
    payment = @transaction1.prompt_for_payment(input: input)
    assert_equal 30, @transaction1.amount_paid
  end



end
