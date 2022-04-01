require 'bank'

describe Bank do 

  let(:bank) { described_class.new }

  describe '#deposit' do 
    it 'should allow user to deposit an amount and add it to the total' do 
      bank.deposit(1000.00)
      bank.deposit(2000.00)
      expect(bank.total).to eq 3000.00
    end 
  end 

  describe '#withdraw' do 
    it 'should allow user to withdraw an amount and deduct it from the total' do 
      bank.deposit(3000.00)
      bank.withdraw(1000.00)
      expect(bank.total).to eq 2000.00
    end 
  end 


end