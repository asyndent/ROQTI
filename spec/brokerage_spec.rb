require_relative '../lib/ROQTI'

describe Brokerage "#purchase_value" do
  it "should return the purchase value of the brokerage" do 
    portfolio = Portfolio.new("Ted")
    stock = Stock.new("aapl")
    account = Account.new("account1")
    brokerage = Brokerage.new("brokerage1")
    portfolio.add_asset("aapl", 5, 500)
    account.add_portfolio(portfolio)
    brokerage.add_account(account)
    brokerage.purchase_value.should eq(2500)
  end
end

