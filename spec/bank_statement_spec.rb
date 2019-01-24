require 'bank_statement'

RSpec.describe BankStatement do
  it 'user can deposit money' do
    expect(subject).to respond_to(:deposit).with(2).argument
  end

  it 'user can withdraw money' do
    expect(subject).to respond_to( :withdraw).with(2).argument
  end
  
  it 'user can print a statement' do
    expect(subject).to respond_to(:print)
  end

  it 'user receives printed statement' do
    expect(subject.print).to eq "date || credit || debit || balance14/01/2012 || || 500.00 || 2500.0013/01/2012 || 2000.00 || || 3000.0010/01/2012 || 1000.00 || || 1000.00"
  end

   
  it 'allows users to deposit and withdraw money' do
    subject.deposit(20,:date)
    expect { subject.withdraw(20,:date) }.to change {subject.balance}.to eq(0)
  end
end