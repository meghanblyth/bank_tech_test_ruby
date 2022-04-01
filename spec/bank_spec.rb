require 'bank'

describe Bank do 

  let(:bank) { described_class.new }

  describe '#deposit' do 
    it 'should allow user to deposit an amount and add it to the total' do 
      bank.deposit(1000.00)
      expect(bank.total).to eq 1000.00
    end 
  end 
end