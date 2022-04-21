require 'date'
require_relative "./statement.rb"

class Bank
  attr_accessor :total, :amount, :history

  def initialize
    @total = 0
    @amount = amount
    @history = []
  end

  def deposit(amount)
    @total += amount
    @history.push({ transaction: 'deposit', amount: '%.2f' % amount, date: self.get_date, balance: '%.2f' % @total })
  end

  def withdraw(amount)
    @total -= amount
    @history.push({ transaction: 'withdraw', amount: '%.2f' % amount, date: self.get_date, balance: '%.2f' % @total })
  end

  def get_date
    date = Date.today
    date.strftime("%Y-%m-%d") 
  end 

  def account_statement
    statement = Statement.new(@history)
    statement.print_statement
  end 

end 
