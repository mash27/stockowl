class InvestorsController < ApplicationController
  def index
    @investors = Investor.all
  end

  def show
    @investor = Investor.find(params[:id])

    # Build all the current daily series price for all stocks of this investor
    # @stocks = @investor.stocks.map do |stock|
    #   daily_price_serie = GetCurrentDailyPriceSeriesForStockService.new(stock.ticker).call
    #   # See stock.rb, attr_accessor just to bundle together a stock and its current daily price serie
    #   # from the API
    #   stock.daily_price_serie = daily_price_serie
    #   stock
    # end
  end
end
