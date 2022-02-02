class BankStatement

  def initialize
    @bala = 0
    @balances = []
    @date = []
    @withdrawal = []
    @deposits = []
  end

  def displaybalance
    @bala
  end

  def displaywithd
    @withdrawal
  end

  def displaydepo
    @deposits
  end

  def depo(amount)
    @bala += amount
    @deposits.push(amount)
    @withdrawal.push(" ")
    @balances.push(@bala)
    current_date
  end

  def withdraw(amount)
    if amount > @bala
      raise 'Insufficient Fund, Please Deposit Money Before Trying Again'
    end
    @bala -= amount
    @deposits.push(" ")
    @withdrawal.push(amount)
    @balances.push(@bala)
    current_date
  end

  def current_date
    t = Time.now
    date_array = (@balances).map {t}
    date_array_format = date_array.map { 
        |date| 
        date.strftime("%d-%m-%Y")
    }
    @date.push(date_array_format[-1])
  end

  def accstatement
    statement = [@date, @withdrawal, @deposits, @balances]
    bank_statement = statement.transpose()
    print ('[DATE, CREDIT, DEBIT, BALANCE]')
    return bank_statement
  end

end
