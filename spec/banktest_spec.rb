require 'banktest'

describe BankStatement do

  before do
    @bank = BankStatement.new
  end

  it "creates a bank statement class" do
    expect(@bank).to be_an_instance_of(BankStatement)
  end

  it "returns 0 if the bank balance is empty" do
    expect(@bank.displaybalance).to be(0)
  end

  it "adds all deposit onto deposits list" do
    @bank.depo(100)
    expect(@bank.displaydepo).to include(100)
  end

  it "adds all withdrawals onto withdrawals list" do
    @bank.depo(200)
    @bank.withdraw(100)
    expect(@bank.displaywithd).to include(100)
  end

  it "updates bank balance with total bank balance" do
    @bank.depo(100)
    @bank.depo(1100)
    @bank.withdraw(200)
    expect(@bank.displaybalance).to eq(1000)
  end

  it "should set the date to the current date when depositing and withdrawing" do
    @bank.depo(100)
    @time_now = Time.now
    allow(Time).to receive(:now).and_return(@time_now)
    expect(@bank.current_date).to include(@time_now.strftime("%d-%m-%Y"))
  end

  it "displays the DATE, CREDIT, DEBIT, BALANCE format" do
    @bank.depo(100)
    expect(@bank.accstatement).to start_with(["02-02-2022", " ", 100, 100])
  end

end
