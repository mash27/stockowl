class GetCurrentDailyPriceSeriesForStockService
  require 'open-uri'
  require 'json'

  def initialize(company_ticker)
    @company_ticker = company_ticker
  end

  def call
    # 1. Build the url
    url = "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{@company_ticker}&apikey=#{ENV['API_KEY_ALPHA_VANTAGE']}"
    # 2. Put a request to the API using this url
    json_payload = open(url).read
    # 3. Parse the payload to get proper ruby objects
    data = JSON.parse(json_payload)

    return data["Time Series (Daily)"].first
  end
end
