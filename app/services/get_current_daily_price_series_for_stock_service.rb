class GetCurrentDailyPriceSeriesForStockService
  require 'open-uri'
  require 'json'

  def initialize(company_ticker)
    @company_ticker = company_ticker
    p @company_ticker
  end

  def call
    # 1. Build the url
    url = "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{@company_ticker}&apikey=#{ENV['API_KEY_ALPHA_VANTAGE']}"
    # 2. Put a request to the API using this url
    json_payload = open(url).read
    # 3. Parse the payload to get proper ruby objects
    data = JSON.parse(json_payload)

    date, daily_price_serie_data = data["Time Series (Daily)"].first
    average_daily_price = daily_price_serie_data.values[0..3].map(&:to_f).reduce(:+) / 4

    formatted_data = {
      date: date,
      daily_price_serie_data: {
        open: daily_price_serie_data["1. open"],
        high: daily_price_serie_data["2. high"],
        low: daily_price_serie_data["3. low"],
        close: daily_price_serie_data["4. close"],
        average: average_daily_price,
        volume: daily_price_serie_data["5. volume"],
      }
    }
    return formatted_data
  end
end
