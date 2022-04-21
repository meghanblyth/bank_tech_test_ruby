class Statement 

  def initialize(history)
    @history = history
  end 

  def print_statement
    puts "Date || Credit || Debit || Balance"

    @history.each do |history| 
      if history[:transaction] == 'deposit'
        puts "#{history[:date]} || #{history[:amount]} ||  || #{history[:balance]}"
      else 
        puts "#{history[:date]} || ||  #{history[:amount]} || #{history[:balance]}"
      end 
    end 
  end 

end 