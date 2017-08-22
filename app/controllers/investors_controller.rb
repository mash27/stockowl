class InvestorsController < ApplicationController
  def index
    @investors = Investor.all
  end

  def show
    @investor = Investor.find(params[:id])
    investor_stocks = @investor.investor_stocks
    @sectors_pie_chart_data = investor_stocks.reduce({}) do |histogram, investor_stock|
      sector = investor_stock.stock.sector
      if histogram.key?(sector)
       histogram[sector] += 1
      else
        histogram[sector] = 1
      end
      histogram
    end
    .to_a

    @quarters_combo_chart_data = investor_stocks.map do |investor_stock|
      processed_investor_stock_quarters = investor_stock.investor_stock_quarters.map do |investor_stock_quarter|
        [investor_stock_quarter.designation, investor_stock_quarter.shares_count_at_the_end, investor_stock_quarter.stock_average_price]
      end

      [['Quarter', 'Q End Shares', 'Average price']] + processed_investor_stock_quarters
    end


    @investor_stocks = @investor.investor_stocks

    # SORTING our stocks
    case params[:sort]
    when 'weight-desc'
      @investor_stocks = @investor_stocks.order(percentage_weight_compared_to_portfolio_total_value: :desc)
    when 'weight-asc'
      @investor_stocks = @investor_stocks.order(percentage_weight_compared_to_portfolio_total_value: :asc)
    end
   # end
    # Build all the current daily series price for all stocks of this investor

    # @stocks = @investor.stocks.map do |stock|
    #   daily_price_serie = GetCurrentDailyPriceSeriesForStockService.new(stock.ticker).call
    #   # See stock.rb, attr_accessor just to bundle together a stock and its current daily price serie
    #   # from the API
    #   stock.daily_price_serie = daily_price_serie
    #   stock
    # end
  end

    # @stocks = @investor.stocks.map do |stock|
    #   daily_price_serie = GetCurrentDailyPriceSeriesForStockService.new(stock.ticker).call
    #   # See stock.rb, attr_accessor just to bundle together a stock and its current daily price serie
    #   # from the API
    #   stock.daily_price_serie = daily_price_serie
    #   stock
    # end

end
