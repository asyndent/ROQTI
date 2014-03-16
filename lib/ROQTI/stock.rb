class Stock < Security # i've made this a subclass of asset... that may or may not be a good thing
  def initialize(data_source, ticker_symbol, num_shares = 0)
    super(data_source, ticker_symbol, num_shares)
  end

  def ticker_symbol()
    return @ticker_symbol
  end
  
  def to_s()
    return "#{@ticker_symbol}:\t#{@num_shares}"
  end  
  
end


