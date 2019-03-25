require('minitest/autorun')
require ('minitest/rg')
require_relative ('../bank_account.rb')

class BankAccountTest < MiniTest::Test
  def test_account_name
    bank_account = BankAccount.new('John', 500, 'business')
    assert_equal('John', bank_account.holder_name)
  end

  def test_account_name_setter
    bank_account = BankAccount.new('John', 500, 'business')
    bank_account.holder_name = "Scott"
    assert_equal("Scott", bank_account.holder_name)
  end

  def test_get_balance
    bank_account = BankAccount.new('John',500,'business')
    assert_equal(500, bank_account.balance)
  end

  def test_set_new_balance
    bank_account = BankAccount.new('John',500,'business')
    bank_account.balance = 400
    assert_equal(400, bank_account.balance)
  end

  def test_get_account_type
    bank_account = BankAccount.new('John',500,'business')
    bank_account.type
    assert_equal('business', bank_account.type)
  end

  def test_set_account_type
    bank_account = BankAccount.new('John',500,'business')
    bank_account.type = 'personal'
    assert_equal('personal', bank_account.type)
  end

  def test_can_pay_into_account
    bank_account = BankAccount.new('John',500,'business')
    bank_account.pay_in(300)
    assert(800, bank_account.balance)
  end
  def test_pay_monthly_fee
    bank_account = BankAccount.new('John',500,'personal')
    bank_account.pay_monthly_fee()
    assert(450, bank_account.balance)
  end
  def test_pay_monthly_fee_business_account
    bank_account = BankAccount.new('John',500,'business')
    bank_account.pay_monthly_fee()
    assert_equal(400, bank_account.balance)
  end
end
