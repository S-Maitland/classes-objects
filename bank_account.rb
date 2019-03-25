class BankAccount
  attr_accessor :holder_name, :balance, :type

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  def pay_in(amount)
    @balance += amount
  end

  def pay_monthly_fee()
    charges = {
      'business' => 100,
      'personal' => 50
    }
    @balance -= charges[@type]
  end
end
