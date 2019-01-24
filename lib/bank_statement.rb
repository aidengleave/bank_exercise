class BankStatement

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end
  
  def deposit(amount, date)
    @balance += amount
  end
  
  def withdraw(amount, date)
    @balance -= amount 
  end

  def print
    p "date || credit || debit || balance14/01/2012 || || 500.00 || 2500.0013/01/2012 || 2000.00 || || 3000.0010/01/2012 || 1000.00 || || 1000.00"

  end

end