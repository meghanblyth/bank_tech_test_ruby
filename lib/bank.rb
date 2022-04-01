require 'date'

class Bank
  attr_accessor :total, :amount, :history

  def initialize
    @total = 0
    @amount = amount
    @history = []
  end

  def deposit(amount)
    @total += amount
    @total
  end

  def withdraw(amount)
    @total -= amount
    @total
  end

  def get_date
    date = Date.today
    date.strftime("%Y-%m-%d") 
  end 

end 
