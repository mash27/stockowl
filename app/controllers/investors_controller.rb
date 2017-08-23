class InvestorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

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

    @investor_stocks = @investor.investor_stocks.joins(:stock)

    # SORTING our stocks
    case params[:sort]
    when 'ticker-asc'
      @investor_stocks = @investor_stocks.order('stocks.ticker ASC')
    when 'ticker-desc'
      @investor_stocks = @investor_stocks.order('stocks.ticker DESC')
    when 'sector-asc'
      @investor_stocks = @investor_stocks.order('stocks.sector ASC')
    when 'sector-desc'
      @investor_stocks = @investor_stocks.order('stocks.sector DESC')
    when 'share-change-asc', 'share-change-desc'
      @investor_stocks = @investor_stocks.
        joins("LEFT OUTER JOIN investor_stock_quarters ON investor_stock_quarters.investor_stock_id = investor_stocks.id").
        joins("LEFT OUTER JOIN investor_stock_quarters quarters2 ON quarters2.investor_stock_id = investor_stocks.id AND investor_stock_quarters.id < quarters2.id").
        where("quarters2.id IS NULL")

      case params[:sort]
      when 'share-change-asc'
        @investor_stocks = @investor_stocks.order("investor_stock_quarters.percentage_change_in_owned_shares_from_last_quarter ASC")
      when 'share-change-desc'
        @investor_stocks = @investor_stocks.order("investor_stock_quarters.percentage_change_in_owned_shares_from_last_quarter DESC")
      end
    when 'mcap-asc'
      @investor_stocks = @investor_stocks.order('stocks.market_cap_in_millions ASC')
    when 'mcap-desc'
      @investor_stocks = @investor_stocks.order('stocks.market_cap_in_millions DESC')
    when 'weight-asc'
      @investor_stocks = @investor_stocks.order(percentage_weight_compared_to_portfolio_total_value: :asc)
    when 'weight-desc'
      @investor_stocks = @investor_stocks.order(percentage_weight_compared_to_portfolio_total_value: :desc)
    when 'sharesout-asc'
      @investor_stocks = @investor_stocks.order(percentage_shares_outstanding: :asc)
    when 'sharesout-desc'
      @investor_stocks = @investor_stocks.order(percentage_shares_outstanding: :desc)
    when '3mchange-asc'
      @investor_stocks = @investor_stocks.order('stocks.percentage_three_last_months_price_change ASC')
    when '3mchange-desc'
      @investor_stocks = @investor_stocks.order('stocks.percentage_three_last_months_price_change DESC')
    when 'ytdchange-asc'
      @investor_stocks = @investor_stocks.order('stocks.percentage_year_to_date_price_change ASC')
    when 'ytdchange-desc'
      @investor_stocks = @investor_stocks.order('stocks.percentage_year_to_date_price_change DESC')
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
