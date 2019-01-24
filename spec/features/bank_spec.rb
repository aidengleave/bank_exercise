require 'bank_statement'

RSpec.describe 'Bank feature test' do
  it 'user can deposit, withdraw and print a statement' do
    bank_statement = BankStatement.new
    bank_statement.deposit(1000,:date)
    bank_statement.deposit(2000,:date)
    bank_statement.withdraw(500, :date)
    expect(bank_statement.print).to eq "date || credit || debit || balance14/01/2012 || || 500.00 || 2500.0013/01/2012 || 2000.00 || || 3000.0010/01/2012 || 1000.00 || || 1000.00"
  end

end
