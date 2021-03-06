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

  describe '#get_date' do 
    it 'should show the user the date' do 
      expect(bank.get_date).to eq '2022-04-21'
    end 
  end 

  describe '#print_statement' do 
    it 'should print a statement' do 
      bank.deposit(2000)
      bank.withdraw(1000)
      expect(bank.print_statement).to eq [ {:amount=>'2000.00', :balance=>'2000.00', :date=>"2022-04-21", :transaction=>"deposit"},
        {:amount=>'1000.00', :balance=>'1000.00', :date=>"2022-04-21", :transaction=>"withdraw"} ]
    end 
  end 
end